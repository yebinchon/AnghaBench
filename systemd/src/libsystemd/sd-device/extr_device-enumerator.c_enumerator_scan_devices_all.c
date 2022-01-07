
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device_enumerator ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 int enumerator_scan_dir (int *,char*,char*,int *) ;
 int log_debug (char*) ;
 int log_debug_errno (int,char*) ;

__attribute__((used)) static int enumerator_scan_devices_all(sd_device_enumerator *enumerator) {
        int r = 0;

        log_debug("sd-device-enumerator: Scan all dirs");

        if (access("/sys/subsystem", F_OK) >= 0) {

                r = enumerator_scan_dir(enumerator, "subsystem", "devices", ((void*)0));
                if (r < 0)
                        return log_debug_errno(r, "sd-device-enumerator: Failed to scan /sys/subsystem: %m");
        } else {
                int k;

                k = enumerator_scan_dir(enumerator, "bus", "devices", ((void*)0));
                if (k < 0) {
                        log_debug_errno(k, "sd-device-enumerator: Failed to scan /sys/bus: %m");
                        r = k;
                }

                k = enumerator_scan_dir(enumerator, "class", ((void*)0), ((void*)0));
                if (k < 0) {
                        log_debug_errno(k, "sd-device-enumerator: Failed to scan /sys/class: %m");
                        r = k;
                }
        }

        return r;
}
