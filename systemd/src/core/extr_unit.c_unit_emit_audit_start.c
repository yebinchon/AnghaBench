
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int in_audit; int manager; } ;
typedef TYPE_1__ Unit ;


 int AUDIT_SERVICE_START ;
 scalar_t__ UNIT_SERVICE ;
 int assert (TYPE_1__*) ;
 int manager_send_unit_audit (int ,TYPE_1__*,int ,int) ;

__attribute__((used)) static void unit_emit_audit_start(Unit *u) {
        assert(u);

        if (u->type != UNIT_SERVICE)
                return;


        manager_send_unit_audit(u->manager, u, AUDIT_SERVICE_START, 1);
        u->in_audit = 1;
}
