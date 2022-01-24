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
typedef  int /*<<< orphan*/  ExecCommandFlags ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXEC_COMMAND_AMBIENT_MAGIC ; 
 int /*<<< orphan*/  EXEC_COMMAND_FULLY_PRIVILEGED ; 
 int /*<<< orphan*/  EXEC_COMMAND_IGNORE_FAILURE ; 
 int /*<<< orphan*/  EXEC_COMMAND_NO_ENV_EXPAND ; 
 int /*<<< orphan*/  EXEC_COMMAND_NO_SETUID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** FUNC1 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void) {
        ExecCommandFlags flags = 0;
        char **valid_strv = FUNC1("no-env-expand", "no-setuid", "ignore-failure");
        char **invalid_strv = FUNC1("no-env-expand", "no-setuid", "nonexistent-option", "ignore-failure");
        int r;

        r = FUNC3(valid_strv, &flags);

        FUNC2(r == 0);
        FUNC2(FUNC0(flags, EXEC_COMMAND_NO_ENV_EXPAND));
        FUNC2(FUNC0(flags, EXEC_COMMAND_NO_SETUID));
        FUNC2(FUNC0(flags, EXEC_COMMAND_IGNORE_FAILURE));
        FUNC2(!FUNC0(flags, EXEC_COMMAND_AMBIENT_MAGIC));
        FUNC2(!FUNC0(flags, EXEC_COMMAND_FULLY_PRIVILEGED));

        r = FUNC3(invalid_strv, &flags);

        FUNC2(r == -EINVAL);
}