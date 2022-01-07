
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int STR_IN_SET (char const*,char*,char*) ;
 int path_prepend (char**,char*,char const*) ;
 scalar_t__ sd_device_get_devtype (int *,char const**) ;
 scalar_t__ sd_device_get_sysname (int *,char const**) ;
 int * skip_subsystem (int *,char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static sd_device *handle_usb(sd_device *parent, char **path) {
        const char *devtype, *str, *port;

        if (sd_device_get_devtype(parent, &devtype) < 0)
                return parent;
        if (!STR_IN_SET(devtype, "usb_interface", "usb_device"))
                return parent;

        if (sd_device_get_sysname(parent, &str) < 0)
                return parent;
        port = strchr(str, '-');
        if (!port)
                return parent;
        port++;

        path_prepend(path, "usb-0:%s", port);
        return skip_subsystem(parent, "usb");
}
