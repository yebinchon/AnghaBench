
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* sd_bus_message_handler_t ) (int *,int *,int *) ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;
typedef int Manager ;
typedef int GenericUnitOperationFlags ;


 scalar_t__ FLAGS_SET (int ,int ) ;
 int GENERIC_UNIT_LOAD ;
 int GENERIC_UNIT_VALIDATE_LOADED ;
 int assert (int *) ;
 int bus_get_unit_by_name (int *,int *,char const*,int **,int *) ;
 int bus_unit_validate_load_state (int *,int *) ;
 int isempty (char const*) ;
 int manager_load_unit (int *,char const*,int *,int *,int **) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int method_generic_unit_operation(
                sd_bus_message *message,
                Manager *m,
                sd_bus_error *error,
                sd_bus_message_handler_t handler,
                GenericUnitOperationFlags flags) {

        const char *name;
        Unit *u;
        int r;

        assert(message);
        assert(m);




        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        if (!isempty(name) && FLAGS_SET(flags, GENERIC_UNIT_LOAD))
                r = manager_load_unit(m, name, ((void*)0), error, &u);
        else
                r = bus_get_unit_by_name(m, message, name, &u, error);
        if (r < 0)
                return r;

        if (FLAGS_SET(flags, GENERIC_UNIT_VALIDATE_LOADED)) {
                r = bus_unit_validate_load_state(u, error);
                if (r < 0)
                        return r;
        }

        return handler(message, u, error);
}
