
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int id; TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_13__ {TYPE_2__* seat; } ;
struct TYPE_11__ {int sessions; } ;
typedef TYPE_3__ Session ;
typedef TYPE_2__ Seat ;


 int BUS_ERROR_NO_SUCH_SESSION ;
 int BUS_ERROR_SESSION_NOT_ON_SEAT ;
 int assert (TYPE_2__*) ;
 TYPE_3__* hashmap_get (int ,char const*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*,...) ;
 int sd_bus_message_read (TYPE_2__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int session_activate (TYPE_3__*) ;

__attribute__((used)) static int method_activate_session(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Seat *s = userdata;
        const char *name;
        Session *session;
        int r;

        assert(message);
        assert(s);

        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        session = hashmap_get(s->manager->sessions, name);
        if (!session)
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_SESSION, "No session '%s' known", name);

        if (session->seat != s)
                return sd_bus_error_setf(error, BUS_ERROR_SESSION_NOT_ON_SEAT, "Session %s not on seat %s", name, s->id);

        r = session_activate(session);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
