
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ load_state; int id; } ;
typedef TYPE_1__ Unit ;


 int ENOENT ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UNIT_LOADED ;
 TYPE_1__* UNIT_TRIGGER (TYPE_1__*) ;
 int log_unit_error_errno (TYPE_1__*,int ,char*,...) ;

int unit_test_trigger_loaded(Unit *u) {
        Unit *trigger;



        trigger = UNIT_TRIGGER(u);
        if (!trigger)
                return log_unit_error_errno(u, SYNTHETIC_ERRNO(ENOENT),
                                            "Refusing to start, no unit to trigger.");
        if (trigger->load_state != UNIT_LOADED)
                return log_unit_error_errno(u, SYNTHETIC_ERRNO(ENOENT),
                                            "Refusing to start, unit %s to trigger not loaded.", trigger->id);

        return 0;
}
