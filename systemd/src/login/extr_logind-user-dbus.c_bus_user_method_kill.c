
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* manager; int uid; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int int32_t ;
typedef TYPE_2__ User ;
struct TYPE_10__ {int polkit_registry; } ;


 int CAP_KILL ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SIGNAL_VALID (int ) ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_error_setf (int *,int ,char*,int ) ;
 int sd_bus_message_read (TYPE_2__*,char*,int *) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int user_kill (TYPE_2__*,int ) ;

int bus_user_method_kill(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        User *u = userdata;
        int32_t signo;
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

        r = sd_bus_message_read(message, "i", &signo);
        if (r < 0)
                return r;

        if (!SIGNAL_VALID(signo))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid signal %i", signo);

        r = user_kill(u, signo);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
