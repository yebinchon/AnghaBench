
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* manager; TYPE_1__* user; } ;
typedef TYPE_3__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_11__ {int polkit_registry; } ;
struct TYPE_10__ {int uid; } ;
typedef TYPE_3__ Session ;


 int CAP_KILL ;
 int assert (TYPE_3__*) ;
 int bus_verify_polkit_async (TYPE_3__*,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_reply_method_return (TYPE_3__*,int *) ;
 int session_stop (TYPE_3__*,int) ;

int bus_session_method_terminate(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        int r;

        assert(message);
        assert(s);

        r = bus_verify_polkit_async(
                        message,
                        CAP_KILL,
                        "org.freedesktop.login1.manage",
                        ((void*)0),
                        0,
                        s->user->uid,
                        &s->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = session_stop(s, 1);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
