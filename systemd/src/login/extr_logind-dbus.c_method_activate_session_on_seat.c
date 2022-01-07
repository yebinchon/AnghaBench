
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_4__ {int * seat; } ;
typedef TYPE_1__ Session ;
typedef int Seat ;
typedef int Manager ;


 int BUS_ERROR_SESSION_NOT_ON_SEAT ;
 int assert (int *) ;
 int manager_get_seat_from_creds (int *,int *,char const*,int *,int **) ;
 int manager_get_session_from_creds (int *,int *,char const*,int *,TYPE_1__**) ;
 int sd_bus_error_setf (int *,int ,char*,char const*,char const*) ;
 int sd_bus_message_read (int *,char*,char const**,char const**) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int session_activate (TYPE_1__*) ;

__attribute__((used)) static int method_activate_session_on_seat(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *session_name, *seat_name;
        Manager *m = userdata;
        Session *session;
        Seat *seat;
        int r;

        assert(message);
        assert(m);



        r = sd_bus_message_read(message, "ss", &session_name, &seat_name);
        if (r < 0)
                return r;

        r = manager_get_session_from_creds(m, message, session_name, error, &session);
        if (r < 0)
                return r;

        r = manager_get_seat_from_creds(m, message, seat_name, error, &seat);
        if (r < 0)
                return r;

        if (session->seat != seat)
                return sd_bus_error_setf(error, BUS_ERROR_SESSION_NOT_ON_SEAT,
                                         "Session %s not on seat %s", session_name, seat_name);

        r = session_activate(session);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
