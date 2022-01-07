
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uid_t ;
struct TYPE_7__ {scalar_t__ class; int name; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Machine ;


 int ENXIO ;
 scalar_t__ MACHINE_CONTAINER ;
 scalar_t__ MACHINE_HOST ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int UINT32_C (int ) ;
 int assert (TYPE_1__*) ;
 int machine_get_uid_shift (TYPE_1__*,scalar_t__*) ;
 int sd_bus_error_setf (int *,int ,char*,...) ;
 int sd_bus_reply_method_return (TYPE_1__*,char*,int ) ;

int bus_machine_method_get_uid_shift(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Machine *m = userdata;
        uid_t shift = 0;
        int r;

        assert(message);
        assert(m);




        if (m->class == MACHINE_HOST)
                return sd_bus_reply_method_return(message, "u", UINT32_C(0));

        if (m->class != MACHINE_CONTAINER)
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "UID/GID shift may only be determined for container machines.");

        r = machine_get_uid_shift(m, &shift);
        if (r == -ENXIO)
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Machine %s uses a complex UID/GID mapping, cannot determine shift", m->name);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, "u", (uint32_t) shift);
}
