#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ssize_t ;
typedef  int ExecCommandFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int _EXEC_COMMAND_FLAGS_INVALID ; 
 int /*<<< orphan*/  exec_command_strings ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

ExecCommandFlags FUNC2(const char *s) {
        ssize_t idx;

        idx = FUNC1(exec_command_strings, FUNC0(exec_command_strings), s);

        if (idx < 0)
                return _EXEC_COMMAND_FLAGS_INVALID;
        else
                return 1 << idx;
}