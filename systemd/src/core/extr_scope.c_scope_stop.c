
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Scope ;


 TYPE_1__* IN_SET (int ,int ,int ) ;
 TYPE_1__* SCOPE (int *) ;
 int SCOPE_ABANDONED ;
 int SCOPE_RUNNING ;
 int SCOPE_STOP_SIGKILL ;
 int SCOPE_STOP_SIGTERM ;
 int SCOPE_SUCCESS ;
 int assert (TYPE_1__*) ;
 int scope_enter_signal (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int scope_stop(Unit *u) {
        Scope *s = SCOPE(u);

        assert(s);

        if (IN_SET(s->state, SCOPE_STOP_SIGTERM, SCOPE_STOP_SIGKILL))
                return 0;

        assert(IN_SET(s->state, SCOPE_RUNNING, SCOPE_ABANDONED));

        scope_enter_signal(s, SCOPE_STOP_SIGTERM, SCOPE_SUCCESS);
        return 1;
}
