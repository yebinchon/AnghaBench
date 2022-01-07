
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server_socket; int event_receive; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void manager_listen_stop(Manager *m) {
        assert(m);

        m->event_receive = sd_event_source_unref(m->event_receive);
        m->server_socket = safe_close(m->server_socket);
}
