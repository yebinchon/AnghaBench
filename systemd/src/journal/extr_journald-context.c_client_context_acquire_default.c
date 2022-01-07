
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ucred {int pid; int gid; int uid; } ;
struct TYPE_5__ {int pid1_context; int my_context; } ;
typedef TYPE_1__ Server ;


 int assert (TYPE_1__*) ;
 int client_context_acquire (TYPE_1__*,int,struct ucred*,int *,int ,int *,int *) ;
 int getgid () ;
 int getpid_cached () ;
 int getuid () ;
 int log_warning_errno (int,char*) ;

void client_context_acquire_default(Server *s) {
        int r;

        assert(s);




        if (!s->my_context) {
                struct ucred ucred = {
                        .pid = getpid_cached(),
                        .uid = getuid(),
                        .gid = getgid(),
                };

                r = client_context_acquire(s, ucred.pid, &ucred, ((void*)0), 0, ((void*)0), &s->my_context);
                if (r < 0)
                        log_warning_errno(r, "Failed to acquire our own context, ignoring: %m");
        }

        if (!s->pid1_context) {

                r = client_context_acquire(s, 1, ((void*)0), ((void*)0), 0, ((void*)0), &s->pid1_context);
                if (r < 0)
                        log_warning_errno(r, "Failed to acquire PID1's context, ignoring: %m");

        }
}
