
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;


 int assert (int *) ;
 scalar_t__ bpf_firewall_compile (int *) ;
 int bpf_firewall_install (int *) ;
 int bpf_firewall_load_custom (int *) ;

__attribute__((used)) static void cgroup_apply_firewall(Unit *u) {
        assert(u);



        if (bpf_firewall_compile(u) < 0)
                return;

        (void) bpf_firewall_load_custom(u);
        (void) bpf_firewall_install(u);
}
