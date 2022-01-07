
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_bus ;
struct TYPE_5__ {int private_listen_fd; int private_listen_event_source; int private_buses; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int destroy_bus (TYPE_1__*,int **) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int set_free (int ) ;
 int * set_steal_first (int ) ;

void bus_done_private(Manager *m) {
        sd_bus *b;

        assert(m);

        while ((b = set_steal_first(m->private_buses)))
                destroy_bus(m, &b);

        m->private_buses = set_free(m->private_buses);

        m->private_listen_event_source = sd_event_source_unref(m->private_listen_event_source);
        m->private_listen_fd = safe_close(m->private_listen_fd);
}
