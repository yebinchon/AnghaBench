
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert_se (int*) ;
 int json_log (int *,int ,int ,char*,int ) ;
 int json_variant_string (int *) ;
 int rlimit_from_string (char const*) ;
 char* startswith (int ,char*) ;

__attribute__((used)) static int oci_rlimit_type(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        const char *z;
        int t, *type = userdata;

        assert_se(type);

        z = startswith(json_variant_string(v), "RLIMIT_");
        if (!z)
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "rlimit entry's name does not begin with 'RLIMIT_', refusing: %s",
                                json_variant_string(v));

        t = rlimit_from_string(z);
        if (t < 0)
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "rlimit name unknown: %s", json_variant_string(v));

        *type = t;
        return 0;
}
