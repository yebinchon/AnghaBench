
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_4__ {int monotonic; int realtime; } ;
typedef TYPE_1__ dual_timestamp ;
typedef int Manager ;


 TYPE_1__ DUAL_TIMESTAMP_NULL ;
 int assert (int *) ;
 int manager_get_idle_hint (int *,TYPE_1__*) ;
 int sd_bus_message_append (int *,char*,int ) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int property_get_idle_since_hint(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        dual_timestamp t = DUAL_TIMESTAMP_NULL;

        assert(bus);
        assert(reply);
        assert(m);

        manager_get_idle_hint(m, &t);

        return sd_bus_message_append(reply, "t", streq(property, "IdleSinceHint") ? t.realtime : t.monotonic);
}
