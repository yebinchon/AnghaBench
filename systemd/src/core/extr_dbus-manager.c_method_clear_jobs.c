
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int assert (int *) ;
 int bus_verify_manage_units_async (int *,int *,int *) ;
 int mac_selinux_access_check (int *,char*,int *) ;
 int manager_clear_jobs (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;

__attribute__((used)) static int method_clear_jobs(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = mac_selinux_access_check(message, "reload", error);
        if (r < 0)
                return r;

        r = bus_verify_manage_units_async(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        manager_clear_jobs(m);

        return sd_bus_reply_method_return(message, ((void*)0));
}
