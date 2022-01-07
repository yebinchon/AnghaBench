
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ stdin_fd; scalar_t__ stdout_fd; scalar_t__ stderr_fd; int fd_store; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* SERVICE (int *) ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (int *,char*) ;
 void* safe_close (scalar_t__) ;
 int service_release_fd_store (TYPE_1__*) ;

__attribute__((used)) static void service_release_resources(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);

        if (!s->fd_store && s->stdin_fd < 0 && s->stdout_fd < 0 && s->stderr_fd < 0)
                return;

        log_unit_debug(u, "Releasing resources.");

        s->stdin_fd = safe_close(s->stdin_fd);
        s->stdout_fd = safe_close(s->stdout_fd);
        s->stderr_fd = safe_close(s->stderr_fd);

        service_release_fd_store(s);
}
