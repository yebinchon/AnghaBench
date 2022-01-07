
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int CGroupMask ;


 int CGROUP_MASK_BPF_FIREWALL ;
 scalar_t__ unit_get_needs_bpf_firewall (int *) ;

__attribute__((used)) static CGroupMask unit_get_bpf_mask(Unit *u) {
        CGroupMask mask = 0;




        if (unit_get_needs_bpf_firewall(u))
                mask |= CGROUP_MASK_BPF_FIREWALL;

        return mask;
}
