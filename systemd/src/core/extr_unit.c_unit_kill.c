
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sd_bus_error ;
typedef int Unit ;
struct TYPE_2__ {int (* kill ) (int *,int ,int,int *) ;} ;
typedef int KillWho ;


 int EOPNOTSUPP ;
 int SIGNAL_VALID (int) ;
 TYPE_1__* UNIT_VTABLE (int *) ;
 int _KILL_WHO_MAX ;
 int assert (int) ;
 int stub1 (int *,int ,int,int *) ;

int unit_kill(Unit *u, KillWho w, int signo, sd_bus_error *error) {
        assert(u);
        assert(w >= 0 && w < _KILL_WHO_MAX);
        assert(SIGNAL_VALID(signo));

        if (!UNIT_VTABLE(u)->kill)
                return -EOPNOTSUPP;

        return UNIT_VTABLE(u)->kill(u, w, signo, error);
}
