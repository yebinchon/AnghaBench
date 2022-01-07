
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;


 int CAP_SYS_ADMIN ;
 int N_ (char*) ;
 int assert (int *) ;
 int bus_verify_manage_units_async_full (int *,char*,int ,int ,int,int *,int *) ;
 int mac_selinux_unit_access_check (int *,int *,char*,int *) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int unit_reset_failed (int *) ;

int bus_unit_method_reset_failed(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        int r;

        assert(message);
        assert(u);

        r = mac_selinux_unit_access_check(u, message, "reload", error);
        if (r < 0)
                return r;

        r = bus_verify_manage_units_async_full(
                        u,
                        "reset-failed",
                        CAP_SYS_ADMIN,
                        N_("Authentication is required to reset the \"failed\" state of '$(unit)'."),
                        1,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        unit_reset_failed(u);

        return sd_bus_reply_method_return(message, ((void*)0));
}
