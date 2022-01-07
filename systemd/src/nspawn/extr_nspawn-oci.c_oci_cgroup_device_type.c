
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int S_IFBLK ;
 int S_IFCHR ;
 int assert_se (char const*) ;
 int json_log (int *,int ,int ,char*,char const*) ;
 char* json_variant_string (int *) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int oci_cgroup_device_type(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        mode_t *mode = userdata;
        const char *n;

        assert_se(n = json_variant_string(v));

        if (streq(n, "c"))
                *mode = S_IFCHR;
        else if (streq(n, "b"))
                *mode = S_IFBLK;
        else
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "Control group device type unknown: %s", n);

        return 0;
}
