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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_2__ {int /*<<< orphan*/  help; } ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ; 
 int FORMAT_MESSAGE_FROM_HMODULE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* HelpMsg ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  MSG_HELP_GENERAL ; 
 int /*<<< orphan*/  MSG_HELP_HELP ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int VFD_NG ; 
 int VFD_OK ; 
 int /*<<< orphan*/  help_progname ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int	FUNC7(const char **args)
{
	DWORD	msg = MSG_HELP_GENERAL;
	char	*buf = NULL;

	if (args && *args) {
		int cmd = FUNC4(*args);

		if (cmd < 0) {
			msg = MSG_HELP_HELP;
		}
		else {
			msg = HelpMsg[cmd].help;
		}
	}

	FUNC1(
		FORMAT_MESSAGE_FROM_HMODULE |
		FORMAT_MESSAGE_ALLOCATE_BUFFER |
		FORMAT_MESSAGE_ARGUMENT_ARRAY,
		NULL, msg, 0, (LPTSTR)&buf, 0,
		(va_list *)&help_progname);
	
	if (buf == NULL) {
		FUNC6("%s", FUNC5(FUNC2()));
		return VFD_NG;
	}

	FUNC0(buf, TRUE);
	FUNC3(buf);

	return VFD_OK;
}