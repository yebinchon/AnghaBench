
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int next_elapse_monotonic_or_boottime; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ sd_bus ;
typedef TYPE_1__ Timer ;


 int CLOCK_MONOTONIC ;
 int TIMER_MONOTONIC_CLOCK (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int sd_bus_message_append (TYPE_1__*,char*,int ) ;
 scalar_t__ usec_shift_clock (int ,int ,int ) ;

__attribute__((used)) static int property_get_next_elapse_monotonic(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Timer *t = userdata;

        assert(bus);
        assert(reply);
        assert(t);

        return sd_bus_message_append(reply, "t",
                                     (uint64_t) usec_shift_clock(t->next_elapse_monotonic_or_boottime,
                                                                 TIMER_MONOTONIC_CLOCK(t), CLOCK_MONOTONIC));
}
