
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int log_error_errno (int ,char*) ;
 int sd_bus_message_get_errno (int *) ;

__attribute__((used)) static int quit_callback(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        bool *x = userdata;

        log_error_errno(sd_bus_message_get_errno(m), "Quit callback: %m");

        *x = 1;
        return 1;
}
