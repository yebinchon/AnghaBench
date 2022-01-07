
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ CGROUP_CPU_SHARES_INVALID ;
 scalar_t__ CGROUP_CPU_SHARES_MAX ;
 scalar_t__ CGROUP_CPU_SHARES_MIN ;

__attribute__((used)) static inline bool CGROUP_CPU_SHARES_IS_OK(uint64_t x) {
        return
            x == CGROUP_CPU_SHARES_INVALID ||
            (x >= CGROUP_CPU_SHARES_MIN && x <= CGROUP_CPU_SHARES_MAX);
}
