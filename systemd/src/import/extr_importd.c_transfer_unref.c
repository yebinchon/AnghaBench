
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pid; int stdout_fd; int stdin_fd; int log_fd; int object_path; int format; int local; int remote; int log_event_source; int pid_event_source; int id; TYPE_1__* manager; } ;
typedef TYPE_2__ Transfer ;
struct TYPE_7__ {int transfers; } ;


 int SIGKILL ;
 int UINT32_TO_PTR (int ) ;
 int free (int ) ;
 int hashmap_remove (int ,int ) ;
 int kill_and_sigcont (scalar_t__,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int wait_for_terminate (scalar_t__,int *) ;

__attribute__((used)) static Transfer *transfer_unref(Transfer *t) {
        if (!t)
                return ((void*)0);

        if (t->manager)
                hashmap_remove(t->manager->transfers, UINT32_TO_PTR(t->id));

        sd_event_source_unref(t->pid_event_source);
        sd_event_source_unref(t->log_event_source);

        free(t->remote);
        free(t->local);
        free(t->format);
        free(t->object_path);

        if (t->pid > 0) {
                (void) kill_and_sigcont(t->pid, SIGKILL);
                (void) wait_for_terminate(t->pid, ((void*)0));
        }

        safe_close(t->log_fd);
        safe_close(t->stdin_fd);
        safe_close(t->stdout_fd);

        return mfree(t);
}
