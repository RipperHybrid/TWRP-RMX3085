#!/sbin/sh

set_device_codename() {
resetprop "ro.product.device" "$1"
        for i in odm product system system_ext vendor; do
         resetprop "ro.product.${i}.device" "$1"
        done
}
