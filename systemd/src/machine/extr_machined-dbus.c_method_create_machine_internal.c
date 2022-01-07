
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_5__ {int create_message; } ;
typedef int Manager ;
typedef TYPE_1__ Machine ;


 int assert (int *) ;
 int machine_add_to_gc_queue (TYPE_1__*) ;
 int machine_start (TYPE_1__*,int *,int *) ;
 int method_create_or_register_machine (int *,int *,int,TYPE_1__**,int *) ;
 int sd_bus_message_enter_container (int *,char,char*) ;
 int sd_bus_message_ref (int *) ;

__attribute__((used)) static int method_create_machine_internal(sd_bus_message *message, bool read_network, void *userdata, sd_bus_error *error) {
        Manager *manager = userdata;
        Machine *m = ((void*)0);
        int r;

        assert(message);
        assert(manager);

        r = method_create_or_register_machine(manager, message, read_network, &m, error);
        if (r < 0)
                return r;

        r = sd_bus_message_enter_container(message, 'a', "(sv)");
        if (r < 0)
                goto fail;

        r = machine_start(m, message, error);
        if (r < 0)
                goto fail;

        m->create_message = sd_bus_message_ref(message);
        return 1;

fail:
        machine_add_to_gc_queue(m);
        return r;
}
