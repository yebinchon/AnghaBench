
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pids; } ;
typedef TYPE_1__ Unit ;


 int PTR_TO_PID (int ) ;
 int assert (TYPE_1__*) ;
 int set_first (int ) ;
 int set_free (int ) ;
 int set_isempty (int ) ;
 int unit_unwatch_pid (TYPE_1__*,int ) ;

void unit_unwatch_all_pids(Unit *u) {
        assert(u);

        while (!set_isempty(u->pids))
                unit_unwatch_pid(u, PTR_TO_PID(set_first(u->pids)));

        u->pids = set_free(u->pids);
}
