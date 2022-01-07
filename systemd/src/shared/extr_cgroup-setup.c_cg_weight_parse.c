
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ CGROUP_WEIGHT_INVALID ;
 scalar_t__ CGROUP_WEIGHT_MAX ;
 scalar_t__ CGROUP_WEIGHT_MIN ;
 int ERANGE ;
 scalar_t__ isempty (char const*) ;
 int safe_atou64 (char const*,scalar_t__*) ;

int cg_weight_parse(const char *s, uint64_t *ret) {
        uint64_t u;
        int r;

        if (isempty(s)) {
                *ret = CGROUP_WEIGHT_INVALID;
                return 0;
        }

        r = safe_atou64(s, &u);
        if (r < 0)
                return r;

        if (u < CGROUP_WEIGHT_MIN || u > CGROUP_WEIGHT_MAX)
                return -ERANGE;

        *ret = u;
        return 0;
}
