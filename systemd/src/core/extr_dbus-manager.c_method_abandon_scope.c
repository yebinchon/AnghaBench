
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ Unit ;
typedef int Manager ;


 int SD_BUS_ERROR_INVALID_ARGS ;
 scalar_t__ UNIT_SCOPE ;
 int assert (int *) ;
 int bus_get_unit_by_name (int *,int *,char const*,TYPE_1__**,int *) ;
 int bus_scope_method_abandon (int *,TYPE_1__*,int *) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int method_abandon_scope(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        Unit *u;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        r = bus_get_unit_by_name(m, message, name, &u, error);
        if (r < 0)
                return r;

        if (u->type != UNIT_SCOPE)
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Unit '%s' is not a scope unit, refusing.", name);

        return bus_scope_method_abandon(message, u, error);
}
