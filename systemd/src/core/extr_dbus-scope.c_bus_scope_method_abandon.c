
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_3__ {int id; int manager; } ;
typedef int Scope ;


 int BUS_ERROR_SCOPE_NOT_RUNNING ;
 int ESTALE ;
 TYPE_1__* UNIT (int *) ;
 int assert (int *) ;
 int bus_verify_manage_units_async (int ,int *,int *) ;
 int mac_selinux_unit_access_check (TYPE_1__*,int *,char*,int *) ;
 int scope_abandon (int *) ;
 int sd_bus_error_setf (int *,int ,char*,int ) ;
 int sd_bus_reply_method_return (int *,int *) ;

int bus_scope_method_abandon(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Scope *s = userdata;
        int r;

        assert(message);
        assert(s);

        r = mac_selinux_unit_access_check(UNIT(s), message, "stop", error);
        if (r < 0)
                return r;

        r = bus_verify_manage_units_async(UNIT(s)->manager, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = scope_abandon(s);
        if (r == -ESTALE)
                return sd_bus_error_setf(error, BUS_ERROR_SCOPE_NOT_RUNNING, "Scope %s is not running, cannot abandon.", UNIT(s)->id);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
