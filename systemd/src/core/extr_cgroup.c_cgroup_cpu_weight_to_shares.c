
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CGROUP_CPU_SHARES_DEFAULT ;
 int CGROUP_CPU_SHARES_MAX ;
 int CGROUP_CPU_SHARES_MIN ;
 int CGROUP_WEIGHT_DEFAULT ;
 int CLAMP (int,int ,int ) ;

__attribute__((used)) static uint64_t cgroup_cpu_weight_to_shares(uint64_t weight) {
        return CLAMP(weight * CGROUP_CPU_SHARES_DEFAULT / CGROUP_WEIGHT_DEFAULT,
                     CGROUP_CPU_SHARES_MIN, CGROUP_CPU_SHARES_MAX);
}
