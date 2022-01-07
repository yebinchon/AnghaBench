
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;
typedef int Session ;


 int assert (int *) ;
 int session_drop_controller (int *) ;

__attribute__((used)) static int on_bus_track(sd_bus_track *track, void *userdata) {
        Session *s = userdata;

        assert(track);
        assert(s);

        session_drop_controller(s);

        return 0;
}
