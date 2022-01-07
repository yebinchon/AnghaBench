
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int reset_accounting; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int bpf_firewall_load_custom (TYPE_1__*) ;
 int unit_export_state_files (TYPE_1__*) ;
 int unit_realize_cgroup (TYPE_1__*) ;
 int unit_reset_accounting (TYPE_1__*) ;
 int unit_setup_dynamic_creds (TYPE_1__*) ;
 int unit_setup_exec_runtime (TYPE_1__*) ;

int unit_prepare_exec(Unit *u) {
        int r;

        assert(u);



        r = bpf_firewall_load_custom(u);
        if (r < 0)
                return r;



        (void) unit_realize_cgroup(u);

        if (u->reset_accounting) {
                (void) unit_reset_accounting(u);
                u->reset_accounting = 0;
        }

        unit_export_state_files(u);

        r = unit_setup_exec_runtime(u);
        if (r < 0)
                return r;

        r = unit_setup_dynamic_creds(u);
        if (r < 0)
                return r;

        return 0;
}
