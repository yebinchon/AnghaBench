
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pid; TYPE_1__* manager; int message; int extra_fd; int errno_fd; int event_source; } ;
struct TYPE_8__ {int n_operations; int operations; } ;
typedef TYPE_2__ Operation ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int operations ;
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

        return mfree(o);
}
