
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int objective; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int MANAGER_IS_SYSTEM (TYPE_1__*) ;
 int MANAGER_REBOOT ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int assert (TYPE_1__*) ;
 int mac_selinux_access_check (TYPE_1__*,char*,int *) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;

__attribute__((used)) static int method_reboot(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = mac_selinux_access_check(message, "reboot", error);
        if (r < 0)
                return r;

        if (!MANAGER_IS_SYSTEM(m))
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Reboot is only supported for system managers.");

        m->objective = MANAGER_REBOOT;

        return sd_bus_reply_method_return(message, ((void*)0));
}
