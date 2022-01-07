
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int INHIBIT_SHUTDOWN ;
 int method_can_shutdown_or_sleep (int *,int *,int ,char*,char*,char*,int *,int *) ;

__attribute__((used)) static int method_can_halt(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;

        return method_can_shutdown_or_sleep(
                        m, message,
                        INHIBIT_SHUTDOWN,
                        "org.freedesktop.login1.halt",
                        "org.freedesktop.login1.halt-multiple-sessions",
                        "org.freedesktop.login1.halt-ignore-inhibit",
                        ((void*)0),
                        error);
}
