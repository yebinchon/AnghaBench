
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device_monitor ;
typedef int sd_device ;
typedef int Manager ;
typedef int Link ;
typedef int DeviceAction ;


 int DEVICE_ACTION_ADD ;
 int DEVICE_ACTION_CHANGE ;
 int DEVICE_ACTION_MOVE ;
 int ENODEV ;
 int IN_SET (int ,int ,int ,int ) ;
 int assert (int *) ;
 int device_action_to_string (int ) ;
 int device_get_action (int *,int *) ;
 int device_is_renaming (int *) ;
 int link_get (int *,int,int **) ;
 int link_initialized (int *,int *) ;
 int log_debug_errno (int,char*,int) ;
 int log_device_debug (int *,char*,...) ;
 int log_device_debug_errno (int *,int,char*) ;
 int log_device_error_errno (int *,int,char*,int ) ;
 int sd_device_get_ifindex (int *,int*) ;

__attribute__((used)) static int manager_udev_process_link(sd_device_monitor *monitor, sd_device *device, void *userdata) {
        Manager *m = userdata;
        DeviceAction action;
        Link *link = ((void*)0);
        int r, ifindex;

        assert(m);
        assert(device);

        r = device_get_action(device, &action);
        if (r < 0) {
                log_device_debug_errno(device, r, "Failed to get udev action, ignoring device: %m");
                return 0;
        }

        if (!IN_SET(action, DEVICE_ACTION_ADD, DEVICE_ACTION_CHANGE, DEVICE_ACTION_MOVE)) {
                log_device_debug(device, "Ignoring udev %s event for device.", device_action_to_string(action));
                return 0;
        }

        r = sd_device_get_ifindex(device, &ifindex);
        if (r < 0) {
                log_device_debug_errno(device, r, "Ignoring udev ADD event for device without ifindex or with invalid ifindex: %m");
                return 0;
        }

        r = device_is_renaming(device);
        if (r < 0) {
                log_device_error_errno(device, r, "Failed to determine the device is renamed or not, ignoring '%s' uevent: %m",
                                       device_action_to_string(action));
                return 0;
        }
        if (r > 0) {
                log_device_debug(device, "Interface is under renaming, wait for the interface to be renamed: %m");
                return 0;
        }

        r = link_get(m, ifindex, &link);
        if (r < 0) {
                if (r != -ENODEV)
                        log_debug_errno(r, "Failed to get link from ifindex %i, ignoring: %m", ifindex);
                return 0;
        }

        (void) link_initialized(link, device);

        return 0;
}
