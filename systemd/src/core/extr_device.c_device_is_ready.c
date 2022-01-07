
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int assert (int *) ;
 scalar_t__ device_is_renaming (int *) ;
 scalar_t__ parse_boolean (char const*) ;
 scalar_t__ sd_device_get_property_value (int *,char*,char const**) ;

__attribute__((used)) static bool device_is_ready(sd_device *dev) {
        const char *ready;

        assert(dev);

        if (device_is_renaming(dev) > 0)
                return 0;

        if (sd_device_get_property_value(dev, "SYSTEMD_READY", &ready) < 0)
                return 1;

        return parse_boolean(ready) != 0;
}
