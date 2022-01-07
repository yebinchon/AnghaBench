
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int std_error; int std_output; int std_input; scalar_t__ tty_vt_disallocate; scalar_t__ tty_vhangup; scalar_t__ tty_reset; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__ const*) ;
 scalar_t__ is_terminal_input (int ) ;
 scalar_t__ is_terminal_output (int ) ;

__attribute__((used)) static bool exec_context_may_touch_tty(const ExecContext *ec) {
        assert(ec);

        return ec->tty_reset ||
                ec->tty_vhangup ||
                ec->tty_vt_disallocate ||
                is_terminal_input(ec->std_input) ||
                is_terminal_output(ec->std_output) ||
                is_terminal_output(ec->std_error);
}
