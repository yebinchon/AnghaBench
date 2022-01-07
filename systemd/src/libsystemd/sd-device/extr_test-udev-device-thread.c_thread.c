
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int assert_se (int) ;
 struct udev_device* udev_device_unref (struct udev_device*) ;

__attribute__((used)) static void* thread(void *p) {
        struct udev_device **d = p;

        assert_se(!(*d = udev_device_unref(*d)));

        return ((void*)0);
}
