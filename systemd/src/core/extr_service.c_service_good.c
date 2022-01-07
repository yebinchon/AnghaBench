
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int bus_name_good; } ;
typedef TYPE_1__ Service ;


 scalar_t__ SERVICE_DBUS ;
 int assert (TYPE_1__*) ;
 scalar_t__ cgroup_good (TYPE_1__*) ;
 int main_pid_good (TYPE_1__*) ;

__attribute__((used)) static bool service_good(Service *s) {
        int main_pid_ok;
        assert(s);

        if (s->type == SERVICE_DBUS && !s->bus_name_good)
                return 0;

        main_pid_ok = main_pid_good(s);
        if (main_pid_ok > 0)
                return 1;
        if (main_pid_ok == 0)
                return 0;





        return cgroup_good(s) != 0;
}
