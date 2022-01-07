
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 char* bus_label_unescape (char const*) ;
 char* startswith (char const*,char*) ;

int unit_name_from_dbus_path(const char *path, char **name) {
        const char *e;
        char *n;

        e = startswith(path, "/org/freedesktop/systemd1/unit/");
        if (!e)
                return -EINVAL;

        n = bus_label_unescape(e);
        if (!n)
                return -ENOMEM;

        *name = n;
        return 0;
}
