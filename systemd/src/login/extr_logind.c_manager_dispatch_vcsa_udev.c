
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sd_device_monitor ;
struct TYPE_7__ {int seat0; } ;
typedef TYPE_1__ sd_device ;
typedef TYPE_1__ Manager ;


 int DEVICE_ACTION_REMOVE ;
 int assert (TYPE_1__*) ;
 scalar_t__ device_for_action (TYPE_1__*,int ) ;
 scalar_t__ sd_device_get_sysname (TYPE_1__*,char const**) ;
 int seat_preallocate_vts (int ) ;
 scalar_t__ startswith (char const*,char*) ;

__attribute__((used)) static int manager_dispatch_vcsa_udev(sd_device_monitor *monitor, sd_device *device, void *userdata) {
        Manager *m = userdata;
        const char *name;

        assert(m);
        assert(device);




        if (sd_device_get_sysname(device, &name) >= 0 &&
            startswith(name, "vcsa") &&
            device_for_action(device, DEVICE_ACTION_REMOVE))
                seat_preallocate_vts(m->seat0);

        return 0;
}
