
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {scalar_t__ pipe_fd; scalar_t__ where; int expire_tokens; int tokens; int pipe_event_source; } ;
struct TYPE_8__ {int objective; } ;
typedef TYPE_2__ Automount ;


 int EHOSTDOWN ;
 int IN_SET (int ,int ,int ) ;
 int MANAGER_REEXECUTE ;
 int MANAGER_RELOAD ;
 int MNT_DETACH ;
 TYPE_6__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int automount_send_ready (TYPE_2__*,int ,int ) ;
 int log_error_errno (int,char*) ;
 int repeat_unmount (scalar_t__,int ) ;
 scalar_t__ safe_close (scalar_t__) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void unmount_autofs(Automount *a) {
        int r;

        assert(a);

        if (a->pipe_fd < 0)
                return;

        a->pipe_event_source = sd_event_source_unref(a->pipe_event_source);
        a->pipe_fd = safe_close(a->pipe_fd);


        if (!IN_SET(UNIT(a)->manager->objective, MANAGER_RELOAD, MANAGER_REEXECUTE)) {

                automount_send_ready(a, a->tokens, -EHOSTDOWN);
                automount_send_ready(a, a->expire_tokens, -EHOSTDOWN);

                if (a->where) {
                        r = repeat_unmount(a->where, MNT_DETACH);
                        if (r < 0)
                                log_error_errno(r, "Failed to unmount: %m");
                }
        }
}
