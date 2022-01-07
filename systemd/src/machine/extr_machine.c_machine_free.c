
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ leader; int netif; int root_directory; int service; int state_file; int name; int create_message; TYPE_1__* manager; int scope_job; scalar_t__ in_gc_queue; scalar_t__ operations; } ;
struct TYPE_10__ {int machine_leaders; TYPE_2__* host_machine; int machines; int machine_gc_queue; } ;
typedef TYPE_2__ Machine ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int PID_TO_PTR (scalar_t__) ;
 int free (int ) ;
 int gc_queue ;
 int hashmap_remove (int ,int ) ;
 int hashmap_remove_value (int ,int ,TYPE_2__*) ;
 int machine_release_unit (TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int operation_free (scalar_t__) ;
 int sd_bus_message_unref (int ) ;

Machine* machine_free(Machine *m) {
        if (!m)
                return ((void*)0);

        while (m->operations)
                operation_free(m->operations);

        if (m->in_gc_queue)
                LIST_REMOVE(gc_queue, m->manager->machine_gc_queue, m);

        machine_release_unit(m);

        free(m->scope_job);

        (void) hashmap_remove(m->manager->machines, m->name);

        if (m->manager->host_machine == m)
                m->manager->host_machine = ((void*)0);

        if (m->leader > 0)
                (void) hashmap_remove_value(m->manager->machine_leaders, PID_TO_PTR(m->leader), m);

        sd_bus_message_unref(m->create_message);

        free(m->name);
        free(m->state_file);
        free(m->service);
        free(m->root_directory);
        free(m->netif);
        return mfree(m);
}
