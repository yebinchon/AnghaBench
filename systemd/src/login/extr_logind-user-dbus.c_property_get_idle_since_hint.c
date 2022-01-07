
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_4__ {int monotonic; int realtime; } ;
typedef TYPE_1__ dual_timestamp ;
typedef int User ;


 TYPE_1__ DUAL_TIMESTAMP_NULL ;
 int assert (int *) ;
 int sd_bus_message_append (int *,char*,int ) ;
 scalar_t__ streq (char const*,char*) ;
 int user_get_idle_hint (int *,TYPE_1__*) ;

__attribute__((used)) static int property_get_idle_since_hint(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        User *u = userdata;
        dual_timestamp t = DUAL_TIMESTAMP_NULL;
        uint64_t k;

        assert(bus);
        assert(reply);
        assert(u);

        (void) user_get_idle_hint(u, &t);
        k = streq(property, "IdleSinceHint") ? t.realtime : t.monotonic;

        return sd_bus_message_append(reply, "t", k);
}
