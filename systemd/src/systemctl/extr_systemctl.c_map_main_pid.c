
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {int running; scalar_t__ main_pid; } ;
typedef TYPE_1__ UnitStatusInfo ;


 int sd_bus_message_read (int *,char*,scalar_t__*) ;

__attribute__((used)) static int map_main_pid(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        UnitStatusInfo *i = userdata;
        uint32_t u;
        int r;

        r = sd_bus_message_read(m, "u", &u);
        if (r < 0)
                return r;

        i->main_pid = (pid_t) u;
        i->running = u > 0;

        return 0;
}
