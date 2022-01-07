
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 char* arphrd_to_name (unsigned short) ;
 int ascii_strlower (char*) ;
 int isempty (char const*) ;
 scalar_t__ sd_device_get_devtype (int *,char const**) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *link_get_type_string(unsigned short iftype, sd_device *d) {
        const char *t, *devtype;
        char *p;

        if (d &&
            sd_device_get_devtype(d, &devtype) >= 0 &&
            !isempty(devtype))
                return strdup(devtype);

        t = arphrd_to_name(iftype);
        if (!t)
                return ((void*)0);

        p = strdup(t);
        if (!p)
                return ((void*)0);

        ascii_strlower(p);
        return p;
}
