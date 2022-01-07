
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bus_container {int offsets; int peeked_signature; int signature; } ;
struct TYPE_4__ {scalar_t__ n_containers; } ;
typedef TYPE_1__ sd_bus_message ;


 int free (int ) ;
 struct bus_container* message_get_last_container (TYPE_1__*) ;

__attribute__((used)) static void message_free_last_container(sd_bus_message *m) {
        struct bus_container *c;

        c = message_get_last_container(m);

        free(c->signature);
        free(c->peeked_signature);
        free(c->offsets);


        if (m->n_containers > 0)
                m->n_containers--;
}
