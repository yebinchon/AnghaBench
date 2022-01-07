
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int path; } ;
struct TYPE_7__ {TYPE_5__* pid_file_pathspec; } ;
typedef TYPE_1__ Service ;


 int UNIT (TYPE_1__*) ;
 int log_unit_debug (int ,char*,int ) ;
 int log_unit_error_errno (int ,int,char*,int ) ;
 int path_spec_watch (TYPE_5__*,int ) ;
 int service_dispatch_inotify_io ;
 int service_retry_pid_file (TYPE_1__*) ;
 int service_unwatch_pid_file (TYPE_1__*) ;

__attribute__((used)) static int service_watch_pid_file(Service *s) {
        int r;

        log_unit_debug(UNIT(s), "Setting watch for PID file %s", s->pid_file_pathspec->path);

        r = path_spec_watch(s->pid_file_pathspec, service_dispatch_inotify_io);
        if (r < 0)
                goto fail;


        log_unit_debug(UNIT(s), "Trying to read PID file %s in case it changed", s->pid_file_pathspec->path);
        service_retry_pid_file(s);

        return 0;
fail:
        log_unit_error_errno(UNIT(s), r, "Failed to set a watch for PID file %s: %m", s->pid_file_pathspec->path);
        service_unwatch_pid_file(s);
        return r;
}
