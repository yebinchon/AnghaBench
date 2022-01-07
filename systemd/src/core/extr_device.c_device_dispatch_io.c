
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device_monitor ;
typedef int sd_device ;
typedef int Manager ;
typedef scalar_t__ DeviceAction ;


 scalar_t__ DEVICE_ACTION_CHANGE ;
 scalar_t__ DEVICE_ACTION_REMOVE ;
 int DEVICE_FOUND_MOUNT ;
 int DEVICE_FOUND_SWAP ;
 int DEVICE_FOUND_UDEV ;
 int assert (int *) ;
 int device_get_action (int *,scalar_t__*) ;
 scalar_t__ device_is_ready (int *) ;
 int device_process_new (int *,int *) ;
 int device_propagate_reload_by_sysfs (int *,char const*) ;
 int device_update_found_by_sysfs (int *,char const*,int,int) ;
 int log_device_error_errno (int *,int,char*) ;
 int log_device_warning_errno (int *,int,char*) ;
 int manager_dispatch_load_queue (int *) ;
 int sd_device_get_syspath (int *,char const**) ;
 int swap_process_device_new (int *,int *) ;
 int swap_process_device_remove (int *,int *) ;

__attribute__((used)) static int device_dispatch_io(sd_device_monitor *monitor, sd_device *dev, void *userdata) {
        Manager *m = userdata;
        DeviceAction action;
        const char *sysfs;
        int r;

        assert(m);
        assert(dev);

        r = sd_device_get_syspath(dev, &sysfs);
        if (r < 0) {
                log_device_error_errno(dev, r, "Failed to get device sys path: %m");
                return 0;
        }

        r = device_get_action(dev, &action);
        if (r < 0) {
                log_device_error_errno(dev, r, "Failed to get udev action: %m");
                return 0;
        }

        if (action == DEVICE_ACTION_CHANGE)
                device_propagate_reload_by_sysfs(m, sysfs);




        if (action == DEVICE_ACTION_REMOVE) {
                r = swap_process_device_remove(m, dev);
                if (r < 0)
                        log_device_warning_errno(dev, r, "Failed to process swap device remove event, ignoring: %m");




                device_update_found_by_sysfs(m, sysfs, 0, DEVICE_FOUND_UDEV|DEVICE_FOUND_MOUNT|DEVICE_FOUND_SWAP);

        } else if (device_is_ready(dev)) {

                (void) device_process_new(m, dev);

                r = swap_process_device_new(m, dev);
                if (r < 0)
                        log_device_warning_errno(dev, r, "Failed to process swap device new event, ignoring: %m");

                manager_dispatch_load_queue(m);


                device_update_found_by_sysfs(m, sysfs, DEVICE_FOUND_UDEV, DEVICE_FOUND_UDEV);

        } else {




                device_update_found_by_sysfs(m, sysfs, 0, DEVICE_FOUND_UDEV);
        }

        return 0;
}
