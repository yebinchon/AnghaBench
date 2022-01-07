
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; } ;
typedef scalar_t__ ScopeResult ;
typedef TYPE_1__ Scope ;


 int SCOPE_DEAD ;
 int SCOPE_FAILED ;
 scalar_t__ SCOPE_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int scope_result_to_string (scalar_t__) ;
 int scope_set_state (TYPE_1__*,int ) ;
 int unit_log_result (int ,int,int ) ;

__attribute__((used)) static void scope_enter_dead(Scope *s, ScopeResult f) {
        assert(s);

        if (s->result == SCOPE_SUCCESS)
                s->result = f;

        unit_log_result(UNIT(s), s->result == SCOPE_SUCCESS, scope_result_to_string(s->result));
        scope_set_state(s, s->result != SCOPE_SUCCESS ? SCOPE_FAILED : SCOPE_DEAD);
}
