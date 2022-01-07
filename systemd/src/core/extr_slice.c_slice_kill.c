
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;
typedef int Unit ;
typedef int KillWho ;


 int unit_kill_common (int *,int ,int,int,int,int *) ;

__attribute__((used)) static int slice_kill(Unit *u, KillWho who, int signo, sd_bus_error *error) {
        return unit_kill_common(u, who, signo, -1, -1, error);
}
