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
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSG_DRIVER_EXISTS ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_GET_STAT_NG ; 
 int /*<<< orphan*/  MSG_HINT_INSTALL ; 
 int /*<<< orphan*/  MSG_INSTALL_NG ; 
 int /*<<< orphan*/  MSG_INSTALL_OK ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_AUTO_START ; 
 scalar_t__ SERVICE_DEMAND_START ; 
 char* FUNC1 (scalar_t__) ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 int VFD_OK ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int	FUNC6(const char **args)
{
	const char *install_path = NULL;
	DWORD start_type = SERVICE_DEMAND_START;

	DWORD ret;

	//	process parameters

	while (args && *args) {

		if (!FUNC4(*args, "/a") ||
			!FUNC4(*args, "/auto")) {

			if (start_type != SERVICE_DEMAND_START) {
				FUNC0(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}
/*
			if (IS_WINDOWS_NT()) {

				//	On Windows NT, SYSTEM start drivers must be placed
				//	under the winnt\system32 directory.  Since I don't
				//	care to handle driver file copying, I use the AUTO
				//	start method for Windows NT.

				start_type = SERVICE_AUTO_START;
			}
			else {

				//	On Windows XP, the VFD driver must be running when
				//	the shell starts -- otherwise the shell doesn't
				//	recognize the VFD drives.  Since Windows XP allows
				//	SYSTEM start drivers to be placed in any local
				//	directories, I use the SYSTEM start method here.
				//
				//	This is not an issue when the driver is started
				//	manually because in that case VFD.EXE and VFDWIN.EXE
				//	notify the shell of the VFD drives.
				//
				//	On Windows 2000 both SYSTEM and AUTO work fine.

				start_type = SERVICE_SYSTEM_START;
			}
*/
			//	On second thought -- Win2K / XP mount manager assigns
			//	arbitrary drive letters to all drives it finds during
			//	the system start up.  There is no way to prevent it
			//	until the driver is fully PnP compatible, so I'd settle
			//	for AUTO start for the time being.

			start_type = SERVICE_AUTO_START;
		}
		else if (**args == '/') {
			FUNC0(MSG_UNKNOWN_OPTION, *args);
			FUNC0(MSG_HINT_INSTALL, help_progname);
			return VFD_NG;
		}
		else {
			if (install_path) {
				FUNC0(MSG_DUPLICATE_ARGS, "path");
				return VFD_NG;
			}

			install_path = *args;
		}

		args++;
	}

	//	already installed?

	if (driver_state != VFD_NOT_INSTALLED) {
		FUNC0(MSG_DRIVER_EXISTS);
		return VFD_NG;
	}

	//	install the driver

	ret = FUNC3(
		install_path,
		start_type);

	if (ret != ERROR_SUCCESS) {
		FUNC0(MSG_INSTALL_NG);
		FUNC5("%s", FUNC1(ret));
		return VFD_NG;
	}

	//	Get the latest driver state

	ret = FUNC2(&driver_state);

	if (ret != ERROR_SUCCESS) {
		FUNC0(MSG_GET_STAT_NG);
		FUNC5("%s", FUNC1(ret));
		return VFD_NG;
	}

	//	operation successfull

	FUNC0(MSG_INSTALL_OK);

	return VFD_OK;
}