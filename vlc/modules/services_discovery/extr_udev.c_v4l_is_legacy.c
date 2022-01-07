
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int strcmp (char const*,char*) ;
 char* udev_device_get_property_value (struct udev_device*,char*) ;

__attribute__((used)) static bool v4l_is_legacy (struct udev_device *dev)
{
    const char *version;

    version = udev_device_get_property_value (dev, "ID_V4L_VERSION");
    return (version != ((void*)0)) && !strcmp (version, "1");
}
