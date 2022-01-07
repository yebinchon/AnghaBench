
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int log_device_debug (int *,char*,char const*,unsigned int) ;
 int log_device_debug_errno (int *,int,char*,char const*) ;
 int log_device_warning_errno (int *,int,char*,char const*,char const*) ;
 int safe_atou (char const*,unsigned int*) ;
 int sd_device_get_sysattr_value (int *,char const*,char const**) ;

__attribute__((used)) static int link_unsigned_attribute(sd_device *device, const char *attr, unsigned *type) {
        const char *s;
        int r;

        r = sd_device_get_sysattr_value(device, attr, &s);
        if (r < 0)
                return log_device_debug_errno(device, r, "Failed to query %s: %m", attr);

        r = safe_atou(s, type);
        if (r < 0)
                return log_device_warning_errno(device, r, "Failed to parse %s \"%s\": %m", attr, s);

        log_device_debug(device, "Device has %s=%u", attr, *type);
        return 0;
}
