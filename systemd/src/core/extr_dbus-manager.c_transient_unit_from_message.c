
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char const sd_bus_message ;
typedef int sd_bus_error ;
typedef size_t UnitType ;
struct TYPE_10__ {scalar_t__ bus_track_add; } ;
typedef TYPE_1__ Unit ;
struct TYPE_11__ {int can_transient; } ;
typedef char const Manager ;


 int BUS_ERROR_UNIT_EXISTS ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UNIT_RUNTIME ;
 int assert (char const*) ;
 int bus_unit_set_properties (TYPE_1__*,char const*,int ,int,int *) ;
 int bus_unit_track_add_sender (TYPE_1__*,char const*) ;
 int log_error_errno (int,char*) ;
 int manager_dispatch_load_queue (char const*) ;
 int manager_load_unit (char const*,char const*,int *,int *,TYPE_1__**) ;
 int sd_bus_error_setf (int *,int ,char*,...) ;
 int unit_add_to_load_queue (TYPE_1__*) ;
 int unit_is_pristine (TYPE_1__*) ;
 int unit_make_transient (TYPE_1__*) ;
 size_t unit_name_to_type (char const*) ;
 char const* unit_type_to_string (size_t) ;
 TYPE_2__** unit_vtable ;

__attribute__((used)) static int transient_unit_from_message(
                Manager *m,
                sd_bus_message *message,
                const char *name,
                Unit **unit,
                sd_bus_error *error) {

        UnitType t;
        Unit *u;
        int r;

        assert(m);
        assert(message);
        assert(name);

        t = unit_name_to_type(name);
        if (t < 0)
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid unit name or type.");

        if (!unit_vtable[t]->can_transient)
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Unit type %s does not support transient units.", unit_type_to_string(t));

        r = manager_load_unit(m, name, ((void*)0), error, &u);
        if (r < 0)
                return r;

        if (!unit_is_pristine(u))
                return sd_bus_error_setf(error, BUS_ERROR_UNIT_EXISTS, "Unit %s already exists.", name);



        r = unit_make_transient(u);
        if (r < 0)
                return r;


        r = bus_unit_set_properties(u, message, UNIT_RUNTIME, 0, error);
        if (r < 0)
                return r;


        if (u->bus_track_add) {
                r = bus_unit_track_add_sender(u, message);
                if (r < 0)
                        return log_error_errno(r, "Failed to watch sender: %m");
        }


        unit_add_to_load_queue(u);
        manager_dispatch_load_queue(m);

        *unit = u;

        return 0;
}
