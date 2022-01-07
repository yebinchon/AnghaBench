
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;


 int SHUT_RDWR ;
 int assert_se (int) ;
 int log_error (char*) ;
 int sd_bus_get_fd (int ) ;
 int sd_bus_track_get_bus (int *) ;
 scalar_t__ shutdown (int ,int ) ;
 int track_cb_called_x ;

__attribute__((used)) static int track_cb_x(sd_bus_track *t, void *userdata) {

        log_error("TRACK CB X");

        assert_se(!track_cb_called_x);
        track_cb_called_x = 1;




        assert_se(shutdown(sd_bus_get_fd(sd_bus_track_get_bus(t)), SHUT_RDWR) >= 0);
        return 1;
}
