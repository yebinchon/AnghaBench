
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int path_prepend (char**,char*,unsigned int) ;
 scalar_t__ sd_device_get_sysname (int *,char const**) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static sd_device *handle_bcma(sd_device *parent, char **path) {
        const char *sysname;
        unsigned core;

        if (sd_device_get_sysname(parent, &sysname) < 0)
                return ((void*)0);
        if (sscanf(sysname, "bcma%*u:%u", &core) != 1)
                return ((void*)0);

        path_prepend(path, "bcma-%u", core);
        return parent;
}
