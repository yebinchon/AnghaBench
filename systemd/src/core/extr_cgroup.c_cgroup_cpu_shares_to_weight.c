
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CGROUP_CPU_SHARES_DEFAULT ;
 int CGROUP_WEIGHT_DEFAULT ;
 int CGROUP_WEIGHT_MAX ;
 int CGROUP_WEIGHT_MIN ;
 int CLAMP (int,int ,int ) ;

__attribute__((used)) static uint64_t cgroup_cpu_shares_to_weight(uint64_t shares) {
        return CLAMP(shares * CGROUP_WEIGHT_DEFAULT / CGROUP_CPU_SHARES_DEFAULT,
                     CGROUP_WEIGHT_MIN, CGROUP_WEIGHT_MAX);
}
