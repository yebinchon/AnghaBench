
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int O_RDONLY ;
 scalar_t__ atoi (char const*) ;
 int strcmp (char const*,char*) ;
 char* udev_device_get_devnode (struct udev_device*) ;
 char* udev_device_get_property_value (struct udev_device*,char*) ;
 int vlc_close (int) ;
 int vlc_open (char const*,int ) ;
 char* vlc_path2uri (char const*,char const*) ;

__attribute__((used)) static char *disc_get_mrl (struct udev_device *dev)
{
    const char *node = udev_device_get_devnode (dev);
    const char *val;

    val = udev_device_get_property_value (dev, "ID_CDROM");
    if (val == ((void*)0))
        return ((void*)0);

    val = udev_device_get_property_value (dev, "ID_CDROM_MEDIA_STATE");
    if (val == ((void*)0))
    {
        int fd = vlc_open (node, O_RDONLY);
        if (fd != -1)
            vlc_close (fd);
        return ((void*)0);
    }
    if (!strcmp (val, "blank"))
        return ((void*)0);

    const char *scheme = ((void*)0);
    val = udev_device_get_property_value (dev,
                                          "ID_CDROM_MEDIA_TRACK_COUNT_AUDIO");
    if (val && atoi (val))
        scheme = "cdda";
    val = udev_device_get_property_value (dev, "ID_CDROM_MEDIA_DVD");
    if (val && atoi (val))
        scheme = "dvd";

    val = udev_device_get_property_value (dev, "ID_CDROM_MEDIA_BD");
    if (val && atoi (val))
        scheme = "bluray";
    if (scheme == ((void*)0))
        return ((void*)0);

    return vlc_path2uri (node, scheme);
}
