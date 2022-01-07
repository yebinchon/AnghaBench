
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slice; int manager; } ;
typedef TYPE_1__ User ;


 int KILL_ALL ;
 int assert (TYPE_1__*) ;
 int manager_kill_unit (int ,int ,int ,int,int *) ;

int user_kill(User *u, int signo) {
        assert(u);

        return manager_kill_unit(u->manager, u->slice, KILL_ALL, signo, ((void*)0));
}
