
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int Service ;


 int * SERVICE (int *) ;
 int assert (int *) ;
 scalar_t__ control_pid_good (int *) ;
 scalar_t__ main_pid_good (int *) ;

__attribute__((used)) static bool service_may_gc(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);





        if (main_pid_good(s) > 0 ||
            control_pid_good(s) > 0)
                return 0;

        return 1;
}
