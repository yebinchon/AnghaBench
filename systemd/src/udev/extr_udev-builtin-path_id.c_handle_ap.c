
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sd_device ;


 int assert (char**) ;
 int path_prepend (char**,char*,char const*,...) ;
 scalar_t__ sd_device_get_sysattr_value (char**,char*,char const**) ;
 scalar_t__ sd_device_get_sysname (char**,char const**) ;
 char** skip_subsystem (char**,char*) ;

__attribute__((used)) static sd_device *handle_ap(sd_device *parent, char **path) {
        const char *type, *func;

        assert(parent);
        assert(path);

        if (sd_device_get_sysattr_value(parent, "type", &type) >= 0 &&
            sd_device_get_sysattr_value(parent, "ap_functions", &func) >= 0)
                path_prepend(path, "ap-%s-%s", type, func);
        else {
                const char *sysname;

                if (sd_device_get_sysname(parent, &sysname) >= 0)
                        path_prepend(path, "ap-%s", sysname);
        }

        return skip_subsystem(parent, "ap");
}
