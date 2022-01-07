
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_container {scalar_t__* signature; size_t index; } ;
typedef int sd_bus_message ;


 int assert (int *) ;
 struct bus_container* message_get_last_container (int *) ;

__attribute__((used)) static bool message_end_of_signature(sd_bus_message *m) {
        struct bus_container *c;

        assert(m);

        c = message_get_last_container(m);
        return !c->signature || c->signature[c->index] == 0;
}
