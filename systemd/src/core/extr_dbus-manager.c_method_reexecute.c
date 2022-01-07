
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int objective; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int MANAGER_REEXECUTE ;
 int assert (TYPE_1__*) ;
 int bus_verify_reload_daemon_async (TYPE_1__*,TYPE_1__*,int *) ;
 int mac_selinux_access_check (TYPE_1__*,char*,int *) ;
 int verify_run_space (char*,int *) ;

__attribute__((used)) static int method_reexecute(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = verify_run_space("Refusing to reexecute", error);
        if (r < 0)
                return r;

        r = mac_selinux_access_check(message, "reload", error);
        if (r < 0)
                return r;

        r = bus_verify_reload_daemon_async(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;




        m->objective = MANAGER_REEXECUTE;
        return 1;
}
