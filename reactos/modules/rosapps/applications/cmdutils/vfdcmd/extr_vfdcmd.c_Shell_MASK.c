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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSG_GET_SHELLEXT_NG ; 
 int /*<<< orphan*/  MSG_HINT_SHELL ; 
 int /*<<< orphan*/  MSG_SET_SHELLEXT_NG ; 
 int /*<<< orphan*/  MSG_SHELLEXT_DISABLED ; 
 int /*<<< orphan*/  MSG_SHELLEXT_ENABLED ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 char* FUNC1 (scalar_t__) ; 
 int VFD_NG ; 
 int VFD_OK ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  help_progname ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7(const char **args)
{
	DWORD ret;

	ret = FUNC2();

	if (ret != ERROR_SUCCESS &&
		ret != ERROR_PATH_NOT_FOUND &&
		ret != ERROR_FILE_NOT_FOUND) {
		FUNC0(MSG_GET_SHELLEXT_NG);
		FUNC6("%s", FUNC1(ret));
		return VFD_NG;
	}

	if (args && *args) {
		if (FUNC5(*args, "/on") == 0) {
			if (ret != ERROR_SUCCESS) {
				ret = FUNC3();

				if (ret != ERROR_SUCCESS) {
					FUNC0(MSG_SET_SHELLEXT_NG);
					FUNC6("%s", FUNC1(ret));
					return VFD_NG;
				}
			}
		}
		else if (FUNC5(*args, "/off") == 0) {
			if (ret == ERROR_SUCCESS) {
				ret = FUNC4();

				if (ret != ERROR_SUCCESS) {
					FUNC0(MSG_SET_SHELLEXT_NG);
					FUNC6("%s", FUNC1(ret));
					return VFD_NG;
				}
			}
		}
		else {
			FUNC0(MSG_UNKNOWN_OPTION, *args);
			FUNC0(MSG_HINT_SHELL, help_progname);
			return VFD_NG;
		}

		ret = FUNC2();
	}

	if (ret == ERROR_PATH_NOT_FOUND ||
		ret == ERROR_FILE_NOT_FOUND) {
		FUNC0(MSG_SHELLEXT_DISABLED);
	}
	else if (ret == ERROR_SUCCESS) {
		FUNC0(MSG_SHELLEXT_ENABLED);
	}
	else {
		FUNC0(MSG_GET_SHELLEXT_NG);
		FUNC6("%s", FUNC1(ret));
		return VFD_NG;
	}

	return VFD_OK;
}