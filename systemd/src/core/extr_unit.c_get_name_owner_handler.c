
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_16__ {int get_name_owner_slot; } ;
typedef TYPE_1__ sd_bus_message ;
struct TYPE_17__ {int message; } ;
typedef TYPE_2__ sd_bus_error ;
typedef TYPE_1__ Unit ;
struct TYPE_15__ {int (* bus_name_owner_change ) (TYPE_1__*,int *,char const*) ;} ;


 TYPE_13__* UNIT_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_log_parse_error (int) ;
 char* empty_to_null (char const*) ;
 int log_error (char*,int ) ;
 scalar_t__ sd_bus_error_has_name (TYPE_2__ const*,char*) ;
 scalar_t__ sd_bus_error_is_set (TYPE_2__*) ;
 TYPE_2__* sd_bus_message_get_error (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**) ;
 int sd_bus_slot_unref (int ) ;
 int stub1 (TYPE_1__*,int *,char const*) ;

__attribute__((used)) static int get_name_owner_handler(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const sd_bus_error *e;
        const char *new_owner;
        Unit *u = userdata;
        int r;

        assert(message);
        assert(u);

        u->get_name_owner_slot = sd_bus_slot_unref(u->get_name_owner_slot);

        if (sd_bus_error_is_set(error)) {
                log_error("Failed to get name owner from bus: %s", error->message);
                return 0;
        }

        e = sd_bus_message_get_error(message);
        if (sd_bus_error_has_name(e, "org.freedesktop.DBus.Error.NameHasNoOwner"))
                return 0;

        if (e) {
                log_error("Unexpected error response from GetNameOwner: %s", e->message);
                return 0;
        }

        r = sd_bus_message_read(message, "s", &new_owner);
        if (r < 0) {
                bus_log_parse_error(r);
                return 0;
        }

        new_owner = empty_to_null(new_owner);

        if (UNIT_VTABLE(u)->bus_name_owner_change)
                UNIT_VTABLE(u)->bus_name_owner_change(u, ((void*)0), new_owner);

        return 0;
}
