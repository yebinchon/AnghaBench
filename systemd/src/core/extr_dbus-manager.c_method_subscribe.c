
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ api_bus; int subscribed; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int BUS_ERROR_ALREADY_SUBSCRIBED ;
 int assert (TYPE_1__*) ;
 int mac_selinux_access_check (TYPE_1__*,char*,int *) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 scalar_t__ sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int sd_bus_track_add_sender (int ,TYPE_1__*) ;
 int sd_bus_track_new (scalar_t__,int *,int *,int *) ;

__attribute__((used)) static int method_subscribe(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);



        r = mac_selinux_access_check(message, "status", error);
        if (r < 0)
                return r;

        if (sd_bus_message_get_bus(message) == m->api_bus) {




                if (!m->subscribed) {
                        r = sd_bus_track_new(sd_bus_message_get_bus(message), &m->subscribed, ((void*)0), ((void*)0));
                        if (r < 0)
                                return r;
                }

                r = sd_bus_track_add_sender(m->subscribed, message);
                if (r < 0)
                        return r;
                if (r == 0)
                        return sd_bus_error_setf(error, BUS_ERROR_ALREADY_SUBSCRIBED, "Client is already subscribed.");
        }

        return sd_bus_reply_method_return(message, ((void*)0));
}
