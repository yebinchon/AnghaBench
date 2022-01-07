
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UnitActiveState ;
struct TYPE_5__ {scalar_t__ type; int in_audit; int manager; } ;
typedef TYPE_1__ Unit ;


 int AUDIT_SERVICE_START ;
 int AUDIT_SERVICE_STOP ;
 scalar_t__ UNIT_INACTIVE ;
 scalar_t__ UNIT_SERVICE ;
 int assert (TYPE_1__*) ;
 int manager_send_unit_audit (int ,TYPE_1__*,int ,int) ;

__attribute__((used)) static void unit_emit_audit_stop(Unit *u, UnitActiveState state) {
        assert(u);

        if (u->type != UNIT_SERVICE)
                return;

        if (u->in_audit) {

                manager_send_unit_audit(u->manager, u, AUDIT_SERVICE_STOP, state == UNIT_INACTIVE);
                u->in_audit = 0;
        } else {

                manager_send_unit_audit(u->manager, u, AUDIT_SERVICE_START, state == UNIT_INACTIVE);

                if (state == UNIT_INACTIVE)
                        manager_send_unit_audit(u->manager, u, AUDIT_SERVICE_STOP, 1);
        }
}
