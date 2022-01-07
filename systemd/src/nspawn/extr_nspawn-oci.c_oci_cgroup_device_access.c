
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_data {int r; int w; int m; } ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert_se (char const*) ;
 int json_log (int *,int ,int ,char*,char const) ;
 char* json_variant_string (int *) ;

__attribute__((used)) static int oci_cgroup_device_access(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        struct device_data *d = userdata;
        bool r = 0, w = 0, m = 0;
        const char *s;
        size_t i;

        assert_se(s = json_variant_string(v));

        for (i = 0; s[i]; i++)
                if (s[i] == 'r')
                        r = 1;
                else if (s[i] == 'w')
                        w = 1;
                else if (s[i] == 'm')
                        m = 1;
                else
                        return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                        "Unknown device access character '%c'.", s[i]);

        d->r = r;
        d->w = w;
        d->m = m;

        return 0;
}
