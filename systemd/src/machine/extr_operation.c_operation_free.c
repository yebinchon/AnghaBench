
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pid; TYPE_2__* machine; TYPE_1__* manager; int message; int extra_fd; int errno_fd; int event_source; } ;
struct TYPE_10__ {int operations; } ;
struct TYPE_9__ {int n_operations; int operations; } ;
typedef TYPE_3__ Operation ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 TYPE_3__* mfree (TYPE_3__*) ;
 int operations ;
 int operations_by_machine ;
 int safe_close (int ) ;
 int sd_bus_message_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sigkill_wait (int) ;

Operation *operation_free(Operation *o) {
        if (!o)
                return ((void*)0);

        sd_event_source_unref(o->event_source);

        safe_close(o->errno_fd);
        safe_close(o->extra_fd);

        if (o->pid > 1)
                (void) sigkill_wait(o->pid);

        sd_bus_message_unref(o->message);

        if (o->manager) {
                LIST_REMOVE(operations, o->manager->operations, o);
                o->manager->n_operations--;
        }

        if (o->machine)
                LIST_REMOVE(operations_by_machine, o->machine->operations, o);

        return mfree(o);
}
