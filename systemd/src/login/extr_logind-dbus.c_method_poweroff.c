
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int INHIBIT_SHUTDOWN ;
 int SPECIAL_POWEROFF_TARGET ;
 int method_do_shutdown_or_sleep (int *,int *,int ,int ,char*,char*,char*,int *,int *) ;

__attribute__((used)) static int method_poweroff(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;

        return method_do_shutdown_or_sleep(
                        m, message,
                        SPECIAL_POWEROFF_TARGET,
                        INHIBIT_SHUTDOWN,
                        "org.freedesktop.login1.power-off",
                        "org.freedesktop.login1.power-off-multiple-sessions",
                        "org.freedesktop.login1.power-off-ignore-inhibit",
                        ((void*)0),
                        error);
}
