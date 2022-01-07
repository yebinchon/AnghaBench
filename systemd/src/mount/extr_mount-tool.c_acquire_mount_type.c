
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 scalar_t__ arg_mount_type ;
 int assert (int *) ;
 int log_debug (char*,scalar_t__) ;
 int log_oom () ;
 scalar_t__ sd_device_get_property_value (int *,char*,char const**) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static int acquire_mount_type(sd_device *d) {
        const char *v;

        assert(d);

        if (arg_mount_type)
                return 0;

        if (sd_device_get_property_value(d, "ID_FS_TYPE", &v) < 0)
                return 0;

        arg_mount_type = strdup(v);
        if (!arg_mount_type)
                return log_oom();

        log_debug("Discovered type=%s", arg_mount_type);
        return 1;
}
