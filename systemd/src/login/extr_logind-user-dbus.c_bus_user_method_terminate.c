
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; int uid; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_2__ User ;
struct TYPE_9__ {int polkit_registry; } ;


 int CAP_KILL ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int user_stop (TYPE_2__*,int) ;

int bus_user_method_terminate(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        User *u = userdata;
        int r;

        assert(message);
        assert(u);

        r = bus_verify_polkit_async(
                        message,
                        CAP_KILL,
                        "org.freedesktop.login1.manage",
                        ((void*)0),
                        0,
                        u->uid,
                        &u->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = user_stop(u, 1);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
