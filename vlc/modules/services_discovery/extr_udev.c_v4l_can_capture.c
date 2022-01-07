
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int * strstr (char const*,char*) ;
 char* udev_device_get_property_value (struct udev_device*,char*) ;

__attribute__((used)) static bool v4l_can_capture (struct udev_device *dev)
{
    const char *caps;

    caps = udev_device_get_property_value (dev, "ID_V4L_CAPABILITIES");
    return (caps != ((void*)0)) && (strstr (caps, ":capture:") != ((void*)0));
}
