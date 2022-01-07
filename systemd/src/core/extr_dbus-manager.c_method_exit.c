
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int objective; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int MANAGER_EXIT ;
 int assert (TYPE_1__*) ;
 int mac_selinux_access_check (TYPE_1__*,char*,int *) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;

__attribute__((used)) static int method_exit(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = mac_selinux_access_check(message, "halt", error);
        if (r < 0)
                return r;






        m->objective = MANAGER_EXIT;

        return sd_bus_reply_method_return(message, ((void*)0));
}
