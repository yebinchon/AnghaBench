
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_3__ {int monotonic; int realtime; } ;
typedef TYPE_1__ dual_timestamp ;
typedef int Seat ;


 int assert (int *) ;
 int sd_bus_message_append (int *,char*,int ) ;
 int seat_get_idle_hint (int *,TYPE_1__*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int property_get_idle_since_hint(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Seat *s = userdata;
        dual_timestamp t;
        uint64_t u;
        int r;

        assert(bus);
        assert(reply);
        assert(s);

        r = seat_get_idle_hint(s, &t);
        if (r < 0)
                return r;

        u = streq(property, "IdleSinceHint") ? t.realtime : t.monotonic;

        return sd_bus_message_append(reply, "t", u);
}
