
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int manager; int id; } ;
typedef TYPE_1__ Unit ;
typedef int ExecContext ;


 int MANAGER_IS_SYSTEM (int ) ;
 scalar_t__ MANAGER_IS_TEST_RUN (int ) ;
 int assert (TYPE_1__*) ;
 int unit_export_invocation_id (TYPE_1__*) ;
 int unit_export_log_extra_fields (TYPE_1__*,int const*) ;
 int unit_export_log_level_max (TYPE_1__*,int const*) ;
 int unit_export_log_ratelimit_burst (TYPE_1__*,int const*) ;
 int unit_export_log_ratelimit_interval (TYPE_1__*,int const*) ;
 int * unit_get_exec_context (TYPE_1__*) ;

void unit_export_state_files(Unit *u) {
        const ExecContext *c;

        assert(u);

        if (!u->id)
                return;

        if (!MANAGER_IS_SYSTEM(u->manager))
                return;

        if (MANAGER_IS_TEST_RUN(u->manager))
                return;
        (void) unit_export_invocation_id(u);

        c = unit_get_exec_context(u);
        if (c) {
                (void) unit_export_log_level_max(u, c);
                (void) unit_export_log_extra_fields(u, c);
                (void) unit_export_log_ratelimit_interval(u, c);
                (void) unit_export_log_ratelimit_burst(u, c);
        }
}
