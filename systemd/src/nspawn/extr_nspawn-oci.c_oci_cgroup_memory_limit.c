
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UINT64_MAX ;
 int assert (scalar_t__*) ;
 int json_log (int *,int ,int ,char*,...) ;
 scalar_t__ json_variant_is_negative (int *) ;
 int json_variant_is_unsigned (int *) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_cgroup_memory_limit(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uint64_t *m = userdata;
        uintmax_t k;

        assert(m);

        if (json_variant_is_negative(v)) {
                *m = UINT64_MAX;
                return 0;
        }

        if (!json_variant_is_unsigned(v))
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "Memory limit is not an unsigned integer");

        k = json_variant_unsigned(v);
        if (k >= UINT64_MAX)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "Memory limit too large: %ji", k);

        *m = (uint64_t) k;
        return 0;
}
