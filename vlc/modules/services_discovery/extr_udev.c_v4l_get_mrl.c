
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int asprintf (char**,char*,char const*) ;
 char* udev_device_get_devnode (struct udev_device*) ;
 int v4l_can_capture (struct udev_device*) ;
 scalar_t__ v4l_is_legacy (struct udev_device*) ;

__attribute__((used)) static char *v4l_get_mrl (struct udev_device *dev)
{

    if (v4l_is_legacy (dev) || !v4l_can_capture (dev))
        return ((void*)0);

    const char *node = udev_device_get_devnode (dev);
    char *mrl;

    if (asprintf (&mrl, "v4l2://%s", node) == -1)
        mrl = ((void*)0);
    return mrl;
}
