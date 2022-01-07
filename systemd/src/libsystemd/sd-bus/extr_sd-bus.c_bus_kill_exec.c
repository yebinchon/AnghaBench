
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ busexec_pid; } ;
typedef TYPE_1__ sd_bus ;


 scalar_t__ pid_is_valid (scalar_t__) ;
 int sigterm_wait (scalar_t__) ;

__attribute__((used)) static void bus_kill_exec(sd_bus *bus) {
        if (pid_is_valid(bus->busexec_pid) > 0) {
                sigterm_wait(bus->busexec_pid);
                bus->busexec_pid = 0;
        }
}
