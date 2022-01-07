
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ index; } ;
struct TYPE_7__ {scalar_t__ n_containers; TYPE_1__ root_container; scalar_t__ containers_allocated; int containers; } ;
typedef TYPE_2__ sd_bus_message ;


 int assert (TYPE_2__*) ;
 int message_free_last_container (TYPE_2__*) ;
 int mfree (int ) ;

__attribute__((used)) static void message_reset_containers(sd_bus_message *m) {
        assert(m);

        while (m->n_containers > 0)
                message_free_last_container(m);

        m->containers = mfree(m->containers);
        m->containers_allocated = 0;
        m->root_container.index = 0;
}
