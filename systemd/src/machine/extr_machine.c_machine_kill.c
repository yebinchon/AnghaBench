
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unit; int manager; int leader; int class; } ;
typedef TYPE_1__ Machine ;
typedef scalar_t__ KillWho ;


 int EOPNOTSUPP ;
 int ESRCH ;
 int IN_SET (int ,int ,int ) ;
 scalar_t__ KILL_LEADER ;
 int MACHINE_CONTAINER ;
 int MACHINE_VM ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ kill (int ,int) ;
 int manager_kill_unit (int ,int ,int,int *) ;

int machine_kill(Machine *m, KillWho who, int signo) {
        assert(m);

        if (!IN_SET(m->class, MACHINE_VM, MACHINE_CONTAINER))
                return -EOPNOTSUPP;

        if (!m->unit)
                return -ESRCH;

        if (who == KILL_LEADER) {


                if (kill(m->leader, signo) < 0)
                        return -errno;

                return 0;
        }


        return manager_kill_unit(m->manager, m->unit, signo, ((void*)0));
}
