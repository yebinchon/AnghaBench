
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * stdio_fdname; int std_error; int std_output; int std_input; } ;
typedef TYPE_1__ ExecContext ;


 int EXEC_INPUT_NAMED_FD ;
 int EXEC_OUTPUT_NAMED_FD ;



 int assert (TYPE_1__ const*) ;

const char* exec_context_fdname(const ExecContext *c, int fd_index) {
        assert(c);

        switch (fd_index) {

        case 129:
                if (c->std_input != EXEC_INPUT_NAMED_FD)
                        return ((void*)0);

                return c->stdio_fdname[129] ?: "stdin";

        case 128:
                if (c->std_output != EXEC_OUTPUT_NAMED_FD)
                        return ((void*)0);

                return c->stdio_fdname[128] ?: "stdout";

        case 130:
                if (c->std_error != EXEC_OUTPUT_NAMED_FD)
                        return ((void*)0);

                return c->stdio_fdname[130] ?: "stderr";

        default:
                return ((void*)0);
        }
}
