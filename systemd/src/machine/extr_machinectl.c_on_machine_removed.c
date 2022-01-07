
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sd_bus_message ;
typedef int sd_bus_error ;
typedef int PTYForward ;


 int EXIT_FAILURE ;
 int assert (int **) ;
 int log_error_errno (int,char*) ;
 int pty_forward_set_ignore_vhangup (int *,int) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_message_get_bus (int **) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int on_machine_removed(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        PTYForward ** forward = (PTYForward**) userdata;
        int r;

        assert(m);
        assert(forward);

        if (*forward) {




                r = pty_forward_set_ignore_vhangup(*forward, 0);
                if (r >= 0)
                        return 0;

                log_error_errno(r, "Failed to set ignore_vhangup flag: %m");
        }


        sd_event_exit(sd_bus_get_event(sd_bus_message_get_bus(m)), EXIT_FAILURE);
        return 0;
}
