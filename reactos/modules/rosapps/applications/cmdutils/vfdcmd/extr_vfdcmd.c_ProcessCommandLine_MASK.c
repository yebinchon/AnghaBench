#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int max_args; int (* func ) (char const**) ;int /*<<< orphan*/  hint; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 TYPE_1__* Commands ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSG_GET_STAT_NG ; 
 int /*<<< orphan*/  MSG_TOO_MANY_ARGS ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int VFD_NG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  driver_state ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int FUNC7 (char const**) ; 

int FUNC8(int argc, const char **args)
{
	int		cmd;
	DWORD	ret;

	//
	//	Decide a command to perform
	//
	cmd = FUNC0(*args);

	if (cmd < 0) {

		//	no matching command

		return VFD_NG;
	}

	if (*(++args) &&
		(!FUNC6(*args, "/?") ||
		!FUNC4(*args, "/h"))) {

		//	print a short hint for the command

		FUNC1(Commands[cmd].hint);
		return VFD_NG;
	}

	if (--argc > Commands[cmd].max_args) {

		// too many parameters for the command

		FUNC1(MSG_TOO_MANY_ARGS);
		FUNC1(Commands[cmd].hint);
		return VFD_NG;
	}

	//	Get the current driver state

	ret = FUNC3(&driver_state);

	if (ret != ERROR_SUCCESS) {
		FUNC1(MSG_GET_STAT_NG);
		FUNC5("%s", FUNC2(ret));
		return VFD_NG;
	}

	//	Perform the requested operation

	return (*Commands[cmd].func)(args);
}