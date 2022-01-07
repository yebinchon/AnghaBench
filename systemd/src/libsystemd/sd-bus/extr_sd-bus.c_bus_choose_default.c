
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 scalar_t__ STR_IN_SET (char const*,char*,char*) ;
 scalar_t__ cg_pid_get_owner_uid (int ,int *) ;
 int * default_starter_bus ;
 int * default_system_bus ;
 int * default_user_bus ;
 int sd_bus_open (int **) ;
 int sd_bus_open_system (int **) ;
 int sd_bus_open_user (int **) ;
 char* secure_getenv (char*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static sd_bus **bus_choose_default(int (**bus_open)(sd_bus **)) {
        const char *e;







        e = secure_getenv("DBUS_STARTER_BUS_TYPE");
        if (e) {
                if (streq(e, "system")) {
                        if (bus_open)
                                *bus_open = sd_bus_open_system;
                        return &default_system_bus;
                } else if (STR_IN_SET(e, "user", "session")) {
                        if (bus_open)
                                *bus_open = sd_bus_open_user;
                        return &default_user_bus;
                }
        }



        e = secure_getenv("DBUS_STARTER_ADDRESS");
        if (e) {
                if (bus_open)
                        *bus_open = sd_bus_open;
                return &default_starter_bus;
        }




        if (cg_pid_get_owner_uid(0, ((void*)0)) >= 0) {
                if (bus_open)
                        *bus_open = sd_bus_open_user;
                return &default_user_bus;
        } else {
                if (bus_open)
                        *bus_open = sd_bus_open_system;
                return &default_system_bus;
        }
}
