
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tty_path; int std_error; int std_output; int std_input; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__ const*) ;
 scalar_t__ is_terminal_input (int ) ;
 scalar_t__ is_terminal_output (int ) ;

__attribute__((used)) static bool exec_context_needs_term(const ExecContext *c) {
        assert(c);



        if (is_terminal_input(c->std_input))
                return 1;

        if (is_terminal_output(c->std_output))
                return 1;

        if (is_terminal_output(c->std_error))
                return 1;

        return !!c->tty_path;
}
