
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exported_invocation_id; int exported_log_level_max; int exported_log_extra_fields; int exported_log_ratelimit_interval; int exported_log_ratelimit_burst; int id; int manager; } ;
typedef TYPE_1__ Unit ;


 int MANAGER_IS_SYSTEM (int ) ;
 int assert (TYPE_1__*) ;
 char* strjoina (char*,int ) ;
 int unlink (char const*) ;

void unit_unlink_state_files(Unit *u) {
        const char *p;

        assert(u);

        if (!u->id)
                return;

        if (!MANAGER_IS_SYSTEM(u->manager))
                return;



        if (u->exported_invocation_id) {
                p = strjoina("/run/systemd/units/invocation:", u->id);
                (void) unlink(p);

                u->exported_invocation_id = 0;
        }

        if (u->exported_log_level_max) {
                p = strjoina("/run/systemd/units/log-level-max:", u->id);
                (void) unlink(p);

                u->exported_log_level_max = 0;
        }

        if (u->exported_log_extra_fields) {
                p = strjoina("/run/systemd/units/extra-fields:", u->id);
                (void) unlink(p);

                u->exported_log_extra_fields = 0;
        }

        if (u->exported_log_ratelimit_interval) {
                p = strjoina("/run/systemd/units/log-rate-limit-interval:", u->id);
                (void) unlink(p);

                u->exported_log_ratelimit_interval = 0;
        }

        if (u->exported_log_ratelimit_burst) {
                p = strjoina("/run/systemd/units/log-rate-limit-burst:", u->id);
                (void) unlink(p);

                u->exported_log_ratelimit_burst = 0;
        }
}
