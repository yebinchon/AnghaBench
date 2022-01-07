
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ std_input; scalar_t__ stdin_data_size; } ;
typedef scalar_t__ ExecInput ;
typedef TYPE_1__ ExecContext ;


 scalar_t__ EXEC_INPUT_DATA ;
 int EXEC_INPUT_NULL ;
 scalar_t__ EXEC_INPUT_SOCKET ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ is_terminal_input (scalar_t__) ;

__attribute__((used)) static int fixup_input(
                const ExecContext *context,
                int socket_fd,
                bool apply_tty_stdin) {

        ExecInput std_input;

        assert(context);

        std_input = context->std_input;

        if (is_terminal_input(std_input) && !apply_tty_stdin)
                return EXEC_INPUT_NULL;

        if (std_input == EXEC_INPUT_SOCKET && socket_fd < 0)
                return EXEC_INPUT_NULL;

        if (std_input == EXEC_INPUT_DATA && context->stdin_data_size == 0)
                return EXEC_INPUT_NULL;

        return std_input;
}
