
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;


 int EXIT_SUCCESS ;
 int assert_se (int) ;
 int log_error (char*) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_track_get_bus (int *) ;
 int sd_event_exit (int ,int ) ;
 int track_cb_called_y ;

__attribute__((used)) static int track_cb_y(sd_bus_track *t, void *userdata) {
        int r;

        log_error("TRACK CB Y");

        assert_se(!track_cb_called_y);
        track_cb_called_y = 1;



        r = sd_event_exit(sd_bus_get_event(sd_bus_track_get_bus(t)), EXIT_SUCCESS);
        assert_se(r >= 0);

        return 0;
}
