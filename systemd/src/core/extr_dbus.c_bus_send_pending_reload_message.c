
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pending_reload_message; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_warning_errno (int,char*) ;
 scalar_t__ sd_bus_message_unref (scalar_t__) ;
 int sd_bus_send (int *,scalar_t__,int *) ;

int bus_send_pending_reload_message(Manager *m) {
        int r;

        assert(m);

        if (!m->pending_reload_message)
                return 0;




        r = sd_bus_send(((void*)0), m->pending_reload_message, ((void*)0));
        if (r < 0)
                log_warning_errno(r, "Failed to send queued message, ignoring: %m");

        m->pending_reload_message = sd_bus_message_unref(m->pending_reload_message);

        return 0;
}
