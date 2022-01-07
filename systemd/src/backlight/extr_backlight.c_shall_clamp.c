
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int assert (int *) ;
 int log_device_debug_errno (int *,int,char*) ;
 int parse_boolean (char const*) ;
 int sd_device_get_property_value (int *,char*,char const**) ;

__attribute__((used)) static bool shall_clamp(sd_device *d) {
        const char *s;
        int r;

        assert(d);

        r = sd_device_get_property_value(d, "ID_BACKLIGHT_CLAMP", &s);
        if (r < 0) {
                log_device_debug_errno(d, r, "Failed to get ID_BACKLIGHT_CLAMP property, ignoring: %m");
                return 1;
        }

        r = parse_boolean(s);
        if (r < 0) {
                log_device_debug_errno(d, r, "Failed to parse ID_BACKLIGHT_CLAMP property, ignoring: %m");
                return 1;
        }

        return r;
}
