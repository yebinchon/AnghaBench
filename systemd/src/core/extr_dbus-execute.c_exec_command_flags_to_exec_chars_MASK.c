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
 int /*<<< orphan*/  EXEC_COMMAND_AMBIENT_MAGIC ; 
 int /*<<< orphan*/  EXEC_COMMAND_FULLY_PRIVILEGED ; 
 int /*<<< orphan*/  EXEC_COMMAND_IGNORE_FAILURE ; 
 int /*<<< orphan*/  EXEC_COMMAND_NO_ENV_EXPAND ; 
 int /*<<< orphan*/  EXEC_COMMAND_NO_SETUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*,char*,char*,char*) ; 

__attribute__((used)) static char *FUNC2(ExecCommandFlags flags) {
        return FUNC1(FUNC0(flags, EXEC_COMMAND_IGNORE_FAILURE)   ? "-" : "",
                       FUNC0(flags, EXEC_COMMAND_NO_ENV_EXPAND)    ? ":" : "",
                       FUNC0(flags, EXEC_COMMAND_FULLY_PRIVILEGED) ? "+" : "",
                       FUNC0(flags, EXEC_COMMAND_NO_SETUID)        ? "!" : "",
                       FUNC0(flags, EXEC_COMMAND_AMBIENT_MAGIC)    ? "!!" : "");
}