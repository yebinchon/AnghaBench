
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int path; } ;
struct TYPE_8__ {TYPE_3__* pid_file_pathspec; } ;
typedef TYPE_1__ Service ;


 int UNIT (TYPE_1__*) ;
 int log_unit_debug (int ,char*,int ) ;
 TYPE_3__* mfree (TYPE_3__*) ;
 int path_spec_done (TYPE_3__*) ;
 int path_spec_unwatch (TYPE_3__*) ;

__attribute__((used)) static void service_unwatch_pid_file(Service *s) {
        if (!s->pid_file_pathspec)
                return;

        log_unit_debug(UNIT(s), "Stopping watch for PID file %s", s->pid_file_pathspec->path);
        path_spec_unwatch(s->pid_file_pathspec);
        path_spec_done(s->pid_file_pathspec);
        s->pid_file_pathspec = mfree(s->pid_file_pathspec);
}
