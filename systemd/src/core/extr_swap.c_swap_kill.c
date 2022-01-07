
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sd_bus_error ;
typedef int Unit ;
struct TYPE_2__ {int control_pid; } ;
typedef int KillWho ;


 TYPE_1__* SWAP (int *) ;
 int unit_kill_common (int *,int ,int,int,int ,int *) ;

__attribute__((used)) static int swap_kill(Unit *u, KillWho who, int signo, sd_bus_error *error) {
        return unit_kill_common(u, who, signo, -1, SWAP(u)->control_pid, error);
}
