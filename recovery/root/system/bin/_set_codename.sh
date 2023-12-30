#!/sbin/sh

set_device_codename() {
    new_codename="$1"
    
    echo "- Changing device codename to: $new_codename"
    echo " "

    resetprop "ro.product.device" "$new_codename"
    
    for i in odm product system system_ext vendor; do
        resetprop "ro.product.${i}.device" "$new_codename"
    done

    echo "- Device codename set to: $new_codename"
    echo " "
}