
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGroupMask ;


 int CGROUP_MASK_BPF_DEVICES ;
 int CGROUP_MASK_BPF_FIREWALL ;
 int bpf_devices_supported () ;
 int bpf_firewall_supported () ;

__attribute__((used)) static int cg_bpf_mask_supported(CGroupMask *ret) {
        CGroupMask mask = 0;
        int r;


        r = bpf_firewall_supported();
        if (r > 0)
                mask |= CGROUP_MASK_BPF_FIREWALL;


        r = bpf_devices_supported();
        if (r > 0)
                mask |= CGROUP_MASK_BPF_DEVICES;

        *ret = mask;
        return 0;
}
