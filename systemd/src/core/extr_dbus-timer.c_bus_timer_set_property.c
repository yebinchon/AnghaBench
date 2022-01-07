
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char const sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
struct TYPE_4__ {scalar_t__ load_state; scalar_t__ transient; } ;
typedef TYPE_1__ Unit ;
typedef char const Timer ;


 char* TIMER (TYPE_1__*) ;
 scalar_t__ UNIT_STUB ;
 int assert (char const*) ;
 int bus_timer_set_transient_property (char const*,char const*,char const*,int ,int *) ;

int bus_timer_set_property(
                Unit *u,
                const char *name,
                sd_bus_message *message,
                UnitWriteFlags mode,
                sd_bus_error *error) {

        Timer *t = TIMER(u);

        assert(t);
        assert(name);
        assert(message);

        if (u->transient && u->load_state == UNIT_STUB)
                return bus_timer_set_transient_property(t, name, message, mode, error);

        return 0;
}
