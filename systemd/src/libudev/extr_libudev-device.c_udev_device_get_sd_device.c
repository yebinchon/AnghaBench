
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int * device; } ;
typedef int sd_device ;


 int assert (struct udev_device*) ;

sd_device *udev_device_get_sd_device(struct udev_device *udev_device) {
        assert(udev_device);

        return udev_device->device;
}
