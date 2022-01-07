
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;
typedef scalar_t__ DeviceAction ;


 int assert (int *) ;
 scalar_t__ device_get_action (int *,scalar_t__*) ;

bool device_for_action(sd_device *dev, DeviceAction action) {
        DeviceAction a;

        assert(dev);

        if (device_get_action(dev, &a) < 0)
                return 0;

        return a == action;
}
