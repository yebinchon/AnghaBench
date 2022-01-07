
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_8__ {void* options; void* what; } ;
struct TYPE_9__ {int timer_event_source; int dynamic_creds; int * control_command; int exec_command; int exec_runtime; TYPE_1__ parameters_fragment; void* what; } ;
typedef TYPE_2__ Swap ;


 TYPE_2__* SWAP (int *) ;
 int _SWAP_EXEC_COMMAND_MAX ;
 int assert (TYPE_2__*) ;
 int dynamic_creds_unref (int *) ;
 int exec_command_done_array (int ,int ) ;
 int exec_runtime_unref (int ,int) ;
 void* mfree (void*) ;
 int sd_event_source_unref (int ) ;
 int swap_set_devnode (TYPE_2__*,int *) ;
 int swap_unset_proc_swaps (TYPE_2__*) ;
 int swap_unwatch_control_pid (TYPE_2__*) ;

__attribute__((used)) static void swap_done(Unit *u) {
        Swap *s = SWAP(u);

        assert(s);

        swap_unset_proc_swaps(s);
        swap_set_devnode(s, ((void*)0));

        s->what = mfree(s->what);
        s->parameters_fragment.what = mfree(s->parameters_fragment.what);
        s->parameters_fragment.options = mfree(s->parameters_fragment.options);

        s->exec_runtime = exec_runtime_unref(s->exec_runtime, 0);
        exec_command_done_array(s->exec_command, _SWAP_EXEC_COMMAND_MAX);
        s->control_command = ((void*)0);

        dynamic_creds_unref(&s->dynamic_creds);

        swap_unwatch_control_pid(s);

        s->timer_event_source = sd_event_source_unref(s->timer_event_source);
}
