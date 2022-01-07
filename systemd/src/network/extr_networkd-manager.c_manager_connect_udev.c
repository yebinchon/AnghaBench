
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device_monitor; int event; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ detect_container () ;
 int log_error_errno (int,char*) ;
 int manager_udev_process_link ;
 int sd_device_monitor_attach_event (int ,int ) ;
 int sd_device_monitor_filter_add_match_subsystem_devtype (int ,char*,int *) ;
 int sd_device_monitor_new (int *) ;
 int sd_device_monitor_start (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int manager_connect_udev(Manager *m) {
        int r;




        if (detect_container() > 0)
                return 0;

        r = sd_device_monitor_new(&m->device_monitor);
        if (r < 0)
                return log_error_errno(r, "Failed to initialize device monitor: %m");

        r = sd_device_monitor_filter_add_match_subsystem_devtype(m->device_monitor, "net", ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Could not add device monitor filter: %m");

        r = sd_device_monitor_attach_event(m->device_monitor, m->event);
        if (r < 0)
                return log_error_errno(r, "Failed to attach event to device monitor: %m");

        r = sd_device_monitor_start(m->device_monitor, manager_udev_process_link, m);
        if (r < 0)
                return log_error_errno(r, "Failed to start device monitor: %m");

        return 0;
}
