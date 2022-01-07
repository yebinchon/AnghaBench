
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int VIRTUALIZATION_NONE ;
 int VIRTUALIZATION_XEN ;
 scalar_t__ access (char*,int ) ;
 int log_debug (char*) ;

__attribute__((used)) static int detect_vm_xen(void) {



        if (access("/proc/xen", F_OK) < 0) {
                log_debug("Virtualization XEN not found, /proc/xen does not exist");
                return VIRTUALIZATION_NONE;
        }

        log_debug("Virtualization XEN found (/proc/xen exists)");
        return VIRTUALIZATION_XEN;
}
