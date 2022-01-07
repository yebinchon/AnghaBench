
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;
typedef int * Manager ;


 int assert (int **) ;
 int bus_get_unit_by_name (int **,int **,char const*,int **,int *) ;
 scalar_t__ isempty (char const*) ;
 int manager_load_unit (int **,char const*,int *,int *,int **) ;

__attribute__((used)) static int bus_load_unit_by_name(Manager *m, sd_bus_message *message, const char *name, Unit **ret_unit, sd_bus_error *error) {
        assert(m);
        assert(message);
        assert(ret_unit);



        if (isempty(name))
                return bus_get_unit_by_name(m, message, name, ret_unit, error);

        return manager_load_unit(m, name, ((void*)0), error, ret_unit);
}
