
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int path_prepend (char**,char*,unsigned int) ;
 scalar_t__ sd_device_get_sysname (int *,char const**) ;
 int * skip_subsystem (int *,char*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static sd_device *handle_cciss(sd_device *parent, char **path) {
        const char *str;
        unsigned controller, disk;

        if (sd_device_get_sysname(parent, &str) < 0)
                return ((void*)0);
        if (sscanf(str, "c%ud%u%*s", &controller, &disk) != 2)
                return ((void*)0);

        path_prepend(path, "cciss-disk%u", disk);
        return skip_subsystem(parent, "cciss");
}
