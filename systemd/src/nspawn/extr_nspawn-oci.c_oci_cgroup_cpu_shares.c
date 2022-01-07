
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 scalar_t__ CGROUP_CPU_SHARES_MAX ;
 scalar_t__ CGROUP_CPU_SHARES_MIN ;
 int ERANGE ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (scalar_t__*) ;
 int json_log (int *,int ,int ,char*) ;
 scalar_t__ json_variant_unsigned (int *) ;

__attribute__((used)) static int oci_cgroup_cpu_shares(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uint64_t *u = userdata;
        uintmax_t k;

        assert(u);

        k = json_variant_unsigned(v);
        if (k < CGROUP_CPU_SHARES_MIN || k > CGROUP_CPU_SHARES_MAX)
                return json_log(v, flags, SYNTHETIC_ERRNO(ERANGE),
                                "shares value out of range.");

        *u = (uint64_t) k;
        return 0;
}
