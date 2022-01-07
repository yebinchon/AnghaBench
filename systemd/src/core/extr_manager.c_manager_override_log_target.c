
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log_target_overridden; int original_log_target; } ;
typedef TYPE_1__ Manager ;
typedef int LogTarget ;


 int assert (TYPE_1__*) ;
 int log_get_target () ;
 int log_info (char*,int ) ;
 int log_set_target (int ) ;
 int log_target_to_string (int ) ;

void manager_override_log_target(Manager *m, LogTarget target) {
        assert(m);

        if (!m->log_target_overridden) {
                m->original_log_target = log_get_target();
                m->log_target_overridden = 1;
        }

        log_info("Setting log target to %s.", log_target_to_string(target));
        log_set_target(target);
}
