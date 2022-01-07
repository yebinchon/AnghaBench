
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log_target_overridden; int original_log_target; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_info (char*,int ) ;
 int log_set_target (int ) ;
 int log_target_to_string (int ) ;

void manager_restore_original_log_target(Manager *m) {
        assert(m);

        if (!m->log_target_overridden)
                return;

        log_info("Restoring log target to original %s.", log_target_to_string(m->original_log_target));

        log_set_target(m->original_log_target);
        m->log_target_overridden = 0;
}
