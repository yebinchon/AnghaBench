
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sd_device ;


 int assert (char const*) ;
 scalar_t__ fnmatch (char const*,char const*,int ) ;
 int sd_device_get_sysattr_value (char const*,char const*,char const**) ;

__attribute__((used)) static bool match_sysattr_value(sd_device *device, const char *sysattr, const char *match_value) {
        const char *value;
        int r;

        assert(device);
        assert(sysattr);

        r = sd_device_get_sysattr_value(device, sysattr, &value);
        if (r < 0)
                return 0;

        if (!match_value)
                return 1;

        if (fnmatch(match_value, value, 0) == 0)
                return 1;

        return 0;
}
