
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_error ;
typedef int Unit ;
struct TYPE_4__ {int control_pid; int main_pid; } ;
typedef TYPE_1__ Service ;
typedef int KillWho ;


 TYPE_1__* SERVICE (int *) ;
 int assert (TYPE_1__*) ;
 int unit_kill_common (int *,int ,int,int ,int ,int *) ;

__attribute__((used)) static int service_kill(Unit *u, KillWho who, int signo, sd_bus_error *error) {
        Service *s = SERVICE(u);

        assert(s);

        return unit_kill_common(u, who, signo, s->main_pid, s->control_pid, error);
}
