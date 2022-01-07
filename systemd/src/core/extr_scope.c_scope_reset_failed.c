
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; int result; } ;
typedef TYPE_1__ Scope ;


 TYPE_1__* SCOPE (int *) ;
 int SCOPE_DEAD ;
 scalar_t__ SCOPE_FAILED ;
 int SCOPE_SUCCESS ;
 int assert (TYPE_1__*) ;
 int scope_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void scope_reset_failed(Unit *u) {
        Scope *s = SCOPE(u);

        assert(s);

        if (s->state == SCOPE_FAILED)
                scope_set_state(s, SCOPE_DEAD);

        s->result = SCOPE_SUCCESS;
}
