
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int pid_t ;


 int PTR_TO_PID (void*) ;
 scalar_t__ arg_kill_signal ;
 int assert (int *) ;
 int kill (int ,scalar_t__) ;
 int log_info (char*) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int on_request_stop(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        pid_t pid;

        assert(m);

        pid = PTR_TO_PID(userdata);

        if (arg_kill_signal > 0) {
                log_info("Container termination requested. Attempting to halt container.");
                (void) kill(pid, arg_kill_signal);
        } else {
                log_info("Container termination requested. Exiting.");
                sd_event_exit(sd_bus_get_event(sd_bus_message_get_bus(m)), 0);
        }

        return 0;
}
