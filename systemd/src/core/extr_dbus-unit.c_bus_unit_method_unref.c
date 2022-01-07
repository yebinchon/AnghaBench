
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Unit ;


 int BUS_ERROR_NOT_REFERENCED ;
 int EUNATCH ;
 int assert (int *) ;
 int bus_unit_track_remove_sender (int *,int *) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_reply_method_return (int *,int *) ;

int bus_unit_method_unref(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        int r;

        assert(message);
        assert(u);

        r = bus_unit_track_remove_sender(u, message);
        if (r == -EUNATCH)
                return sd_bus_error_setf(error, BUS_ERROR_NOT_REFERENCED, "Unit has not been referenced yet.");
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
