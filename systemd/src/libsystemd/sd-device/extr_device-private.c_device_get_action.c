
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ action; } ;
typedef TYPE_1__ sd_device ;
typedef scalar_t__ DeviceAction ;


 int ENOENT ;
 int assert (TYPE_1__*) ;

int device_get_action(sd_device *device, DeviceAction *action) {
        assert(device);

        if (device->action < 0)
                return -ENOENT;

        if (action)
                *action = device->action;

        return 0;
}
