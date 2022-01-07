
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UINT64_MAX ;
 int assert (scalar_t__*) ;
 int json_log (int *,int ,int ,char*) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_cgroup_cpu_quota(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uint64_t *u = userdata;
        uintmax_t k;

        assert(u);

        k = json_variant_unsigned(v);
        if (k <= 0 || k >= UINT64_MAX)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "period/quota value out of range.");

        *u = (uint64_t) k;
        return 0;
}
