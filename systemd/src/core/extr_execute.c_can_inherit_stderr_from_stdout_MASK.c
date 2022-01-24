#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * stdio_file; int /*<<< orphan*/ * stdio_fdname; } ;
typedef  scalar_t__ ExecOutput ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_OUTPUT_FILE ; 
 int /*<<< orphan*/  EXEC_OUTPUT_FILE_APPEND ; 
 scalar_t__ EXEC_OUTPUT_INHERIT ; 
 scalar_t__ EXEC_OUTPUT_NAMED_FD ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t STDERR_FILENO ; 
 size_t STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(
                const ExecContext *context,
                ExecOutput o,
                ExecOutput e) {

        FUNC1(context);

        /* Returns true, if given the specified STDERR and STDOUT output we can directly dup() the stdout fd to the
         * stderr fd */

        if (e == EXEC_OUTPUT_INHERIT)
                return true;
        if (e != o)
                return false;

        if (e == EXEC_OUTPUT_NAMED_FD)
                return FUNC2(context->stdio_fdname[STDOUT_FILENO], context->stdio_fdname[STDERR_FILENO]);

        if (FUNC0(e, EXEC_OUTPUT_FILE, EXEC_OUTPUT_FILE_APPEND))
                return FUNC2(context->stdio_file[STDOUT_FILENO], context->stdio_file[STDERR_FILENO]);

        return true;
}