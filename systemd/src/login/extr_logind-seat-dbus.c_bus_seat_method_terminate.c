
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_9__ {int polkit_registry; } ;
typedef TYPE_2__ Seat ;


 int CAP_KILL ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int seat_stop_sessions (TYPE_2__*,int) ;

int bus_seat_method_terminate(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Seat *s = userdata;
        int r;

        assert(message);
        assert(s);

        r = bus_verify_polkit_async(
                        message,
                        CAP_KILL,
                        "org.freedesktop.login1.manage",
                        ((void*)0),
                        0,
                        UID_INVALID,
                        &s->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = seat_stop_sessions(s, 1);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
