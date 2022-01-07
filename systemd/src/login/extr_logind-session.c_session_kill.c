
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scope; int manager; } ;
typedef TYPE_1__ Session ;
typedef int KillWho ;


 int ESRCH ;
 int assert (TYPE_1__*) ;
 int manager_kill_unit (int ,int ,int ,int,int *) ;

int session_kill(Session *s, KillWho who, int signo) {
        assert(s);

        if (!s->scope)
                return -ESRCH;

        return manager_kill_unit(s->manager, s->scope, who, signo, ((void*)0));
}
