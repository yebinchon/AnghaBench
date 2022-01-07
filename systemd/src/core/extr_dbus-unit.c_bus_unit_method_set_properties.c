
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;


 int CAP_SYS_ADMIN ;
 int N_ (char*) ;
 int UNIT_PERSISTENT ;
 int UNIT_RUNTIME ;
 int assert (int *) ;
 int bus_unit_set_properties (int *,int *,int ,int,int *) ;
 int bus_verify_manage_units_async_full (int *,char*,int ,int ,int,int *,int *) ;
 int mac_selinux_unit_access_check (int *,int *,char*,int *) ;
 int sd_bus_message_read (int *,char*,int*) ;
 int sd_bus_reply_method_return (int *,int *) ;

int bus_unit_method_set_properties(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        int runtime, r;

        assert(message);
        assert(u);

        r = mac_selinux_unit_access_check(u, message, "start", error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "b", &runtime);
        if (r < 0)
                return r;

        r = bus_verify_manage_units_async_full(
                        u,
                        "set-property",
                        CAP_SYS_ADMIN,
                        N_("Authentication is required to set properties on '$(unit)'."),
                        1,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = bus_unit_set_properties(u, message, runtime ? UNIT_RUNTIME : UNIT_PERSISTENT, 1, error);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
