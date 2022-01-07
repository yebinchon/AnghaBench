
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * stdio_file; int * stdio_fdname; } ;
typedef scalar_t__ ExecOutput ;
typedef TYPE_1__ ExecContext ;


 int EXEC_OUTPUT_FILE ;
 int EXEC_OUTPUT_FILE_APPEND ;
 scalar_t__ EXEC_OUTPUT_INHERIT ;
 scalar_t__ EXEC_OUTPUT_NAMED_FD ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 size_t STDERR_FILENO ;
 size_t STDOUT_FILENO ;
 int assert (TYPE_1__ const*) ;
 int streq_ptr (int ,int ) ;

__attribute__((used)) static bool can_inherit_stderr_from_stdout(
                const ExecContext *context,
                ExecOutput o,
                ExecOutput e) {

        assert(context);




        if (e == EXEC_OUTPUT_INHERIT)
                return 1;
        if (e != o)
                return 0;

        if (e == EXEC_OUTPUT_NAMED_FD)
                return streq_ptr(context->stdio_fdname[STDOUT_FILENO], context->stdio_fdname[STDERR_FILENO]);

        if (IN_SET(e, EXEC_OUTPUT_FILE, EXEC_OUTPUT_FILE_APPEND))
                return streq_ptr(context->stdio_file[STDOUT_FILENO], context->stdio_file[STDERR_FILENO]);

        return 1;
}
