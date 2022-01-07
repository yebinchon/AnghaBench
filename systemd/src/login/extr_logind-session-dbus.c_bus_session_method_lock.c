
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* manager; TYPE_1__* user; } ;
typedef TYPE_3__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_12__ {int polkit_registry; } ;
struct TYPE_11__ {int uid; } ;
typedef TYPE_3__ Session ;


 int CAP_SYS_ADMIN ;
 int assert (TYPE_3__*) ;
 int bus_verify_polkit_async (TYPE_3__*,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_message_get_member (TYPE_3__*) ;
 int sd_bus_reply_method_return (TYPE_3__*,int *) ;
 int session_send_lock (TYPE_3__*,int ) ;
 int strstr (int ,char*) ;

int bus_session_method_lock(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        int r;

        assert(message);
        assert(s);

        r = bus_verify_polkit_async(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.lock-sessions",
                        ((void*)0),
                        0,
                        s->user->uid,
                        &s->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = session_send_lock(s, strstr(sd_bus_message_get_member(message), "Lock"));
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
