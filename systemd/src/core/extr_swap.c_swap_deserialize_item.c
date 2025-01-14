
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pid_t ;
typedef int Unit ;
struct TYPE_6__ {scalar_t__ exec_command; scalar_t__ control_command; scalar_t__ control_command_id; int control_pid; scalar_t__ result; scalar_t__ deserialized_state; } ;
typedef scalar_t__ SwapState ;
typedef scalar_t__ SwapResult ;
typedef scalar_t__ SwapExecCommand ;
typedef TYPE_1__ Swap ;
typedef TYPE_1__ FDSet ;


 TYPE_1__* SWAP (int *) ;
 scalar_t__ SWAP_SUCCESS ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (int *,char*,char const*) ;
 scalar_t__ parse_pid (char const*,int *) ;
 scalar_t__ streq (char const*,char*) ;
 scalar_t__ swap_exec_command_from_string (char const*) ;
 scalar_t__ swap_result_from_string (char const*) ;
 scalar_t__ swap_state_from_string (char const*) ;

__attribute__((used)) static int swap_deserialize_item(Unit *u, const char *key, const char *value, FDSet *fds) {
        Swap *s = SWAP(u);

        assert(s);
        assert(fds);

        if (streq(key, "state")) {
                SwapState state;

                state = swap_state_from_string(value);
                if (state < 0)
                        log_unit_debug(u, "Failed to parse state value: %s", value);
                else
                        s->deserialized_state = state;
        } else if (streq(key, "result")) {
                SwapResult f;

                f = swap_result_from_string(value);
                if (f < 0)
                        log_unit_debug(u, "Failed to parse result value: %s", value);
                else if (f != SWAP_SUCCESS)
                        s->result = f;
        } else if (streq(key, "control-pid")) {
                pid_t pid;

                if (parse_pid(value, &pid) < 0)
                        log_unit_debug(u, "Failed to parse control-pid value: %s", value);
                else
                        s->control_pid = pid;

        } else if (streq(key, "control-command")) {
                SwapExecCommand id;

                id = swap_exec_command_from_string(value);
                if (id < 0)
                        log_unit_debug(u, "Failed to parse exec-command value: %s", value);
                else {
                        s->control_command_id = id;
                        s->control_command = s->exec_command + id;
                }
        } else
                log_unit_debug(u, "Unknown serialization key: %s", key);

        return 0;
}
