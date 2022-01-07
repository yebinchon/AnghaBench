
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_10__ {scalar_t__ control_pid; scalar_t__ control_command_id; int result; int state; } ;
typedef TYPE_1__ Swap ;
typedef TYPE_1__ FILE ;
typedef TYPE_1__ FDSet ;


 int PID_FMT ;
 TYPE_1__* SWAP (int *) ;
 int assert (TYPE_1__*) ;
 int serialize_item (TYPE_1__*,char*,int ) ;
 int serialize_item_format (TYPE_1__*,char*,int ,scalar_t__) ;
 int swap_exec_command_to_string (scalar_t__) ;
 int swap_result_to_string (int ) ;
 int swap_state_to_string (int ) ;

__attribute__((used)) static int swap_serialize(Unit *u, FILE *f, FDSet *fds) {
        Swap *s = SWAP(u);

        assert(s);
        assert(f);
        assert(fds);

        (void) serialize_item(f, "state", swap_state_to_string(s->state));
        (void) serialize_item(f, "result", swap_result_to_string(s->result));

        if (s->control_pid > 0)
                (void) serialize_item_format(f, "control-pid", PID_FMT, s->control_pid);

        if (s->control_command_id >= 0)
                (void) serialize_item(f, "control-command", swap_exec_command_to_string(s->control_command_id));

        return 0;
}
