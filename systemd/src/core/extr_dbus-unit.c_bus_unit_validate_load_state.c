
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_error ;
struct TYPE_4__ {int load_state; int id; int load_error; } ;
typedef TYPE_1__ Unit ;


 int BUS_ERROR_BAD_UNIT_SETTING ;
 int BUS_ERROR_NO_SUCH_UNIT ;
 int BUS_ERROR_UNIT_MASKED ;







 int assert (TYPE_1__*) ;
 int sd_bus_error_set_errnof (int *,int ,char*,int ) ;
 int sd_bus_error_setf (int *,int ,char*,int ) ;

int bus_unit_validate_load_state(Unit *u, sd_bus_error *error) {
        assert(u);



        switch (u->load_state) {

        case 132:
                return 0;

        case 129:
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_UNIT, "Unit %s not found.", u->id);

        case 134:
                return sd_bus_error_setf(error, BUS_ERROR_BAD_UNIT_SETTING, "Unit %s has a bad unit file setting.", u->id);

        case 133:
                return sd_bus_error_set_errnof(error, u->load_error, "Unit %s failed to load properly: %m.", u->id);

        case 131:
                return sd_bus_error_setf(error, BUS_ERROR_UNIT_MASKED, "Unit %s is masked.", u->id);

        case 128:
        case 130:
        default:
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_UNIT, "Unexpected load state of unit %s", u->id);
        }
}
