
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sd_bus_slot ;
typedef int sd_bus_message_handler_t ;
struct TYPE_6__ {int bus_client; } ;
typedef TYPE_1__ sd_bus ;


 int EINVAL ;
 char* append_eavesdrop (TYPE_1__*,char const*) ;
 int assert (TYPE_1__*) ;
 int sd_bus_call_method_async (TYPE_1__*,int **,char*,char*,char*,char*,int ,void*,char*,char const*) ;

int bus_add_match_internal_async(
                sd_bus *bus,
                sd_bus_slot **ret_slot,
                const char *match,
                sd_bus_message_handler_t callback,
                void *userdata) {

        const char *e;

        assert(bus);

        if (!bus->bus_client)
                return -EINVAL;

        e = append_eavesdrop(bus, match);

        return sd_bus_call_method_async(
                        bus,
                        ret_slot,
                        "org.freedesktop.DBus",
                        "/org/freedesktop/DBus",
                        "org.freedesktop.DBus",
                        "AddMatch",
                        callback,
                        userdata,
                        "s",
                        e);
}
