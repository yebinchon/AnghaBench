
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {int timer_event_source; int dynamic_creds; int * control_command; int exec_command; int exec_runtime; int parameters_fragment; int parameters_proc_self_mountinfo; int where; } ;
typedef TYPE_1__ Mount ;


 TYPE_1__* MOUNT (int *) ;
 int _MOUNT_EXEC_COMMAND_MAX ;
 int assert (TYPE_1__*) ;
 int dynamic_creds_unref (int *) ;
 int exec_command_done_array (int ,int ) ;
 int exec_runtime_unref (int ,int) ;
 int mfree (int ) ;
 int mount_parameters_done (int *) ;
 int mount_unwatch_control_pid (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void mount_done(Unit *u) {
        Mount *m = MOUNT(u);

        assert(m);

        m->where = mfree(m->where);

        mount_parameters_done(&m->parameters_proc_self_mountinfo);
        mount_parameters_done(&m->parameters_fragment);

        m->exec_runtime = exec_runtime_unref(m->exec_runtime, 0);
        exec_command_done_array(m->exec_command, _MOUNT_EXEC_COMMAND_MAX);
        m->control_command = ((void*)0);

        dynamic_creds_unref(&m->dynamic_creds);

        mount_unwatch_control_pid(m);

        m->timer_event_source = sd_event_source_unref(m->timer_event_source);
}
