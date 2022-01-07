
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int assert (int *) ;
 int sd_device_get_subsystem (int *,char const**) ;
 int sd_device_get_sysname (int *,char const**) ;
 int streq (char const*,char const*) ;

__attribute__((used)) static int same_device(sd_device *a, sd_device *b) {
        const char *a_val, *b_val;
        int r;

        assert(a);
        assert(b);

        r = sd_device_get_subsystem(a, &a_val);
        if (r < 0)
                return r;

        r = sd_device_get_subsystem(b, &b_val);
        if (r < 0)
                return r;

        if (!streq(a_val, b_val))
                return 0;

        r = sd_device_get_sysname(a, &a_val);
        if (r < 0)
                return r;

        r = sd_device_get_sysname(b, &b_val);
        if (r < 0)
                return r;

        return streq(a_val, b_val);
}
