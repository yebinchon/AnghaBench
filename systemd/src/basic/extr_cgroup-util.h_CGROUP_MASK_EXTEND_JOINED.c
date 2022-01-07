
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGroupMask ;


 int CGROUP_MASK_CPU ;
 int CGROUP_MASK_CPUACCT ;

__attribute__((used)) static inline CGroupMask CGROUP_MASK_EXTEND_JOINED(CGroupMask mask) {


        if (mask & (CGROUP_MASK_CPU|CGROUP_MASK_CPUACCT))
                mask |= (CGROUP_MASK_CPU|CGROUP_MASK_CPUACCT);

        return mask;
}
