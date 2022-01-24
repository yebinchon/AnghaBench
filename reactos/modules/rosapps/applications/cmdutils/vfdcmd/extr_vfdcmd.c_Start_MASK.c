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
 scalar_t__ FUNC0 () ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_ALREADY_RUNNING ; 
 int /*<<< orphan*/  MSG_START_NG ; 
 int /*<<< orphan*/  MSG_START_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SERVICE_RUNNING ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int	FUNC7(const char **args)
{
	DWORD	ret;

	FUNC4(args);

	//	ensure that the driver is installed

	if (driver_state == VFD_NOT_INSTALLED &&
		FUNC1(NULL) != VFD_OK) {
		return VFD_NG;
	}

	//	ensure that the driver is up to date

	if (FUNC0() != VFD_OK) {
		return VFD_NG;
	}

	//	ensure that the driver is not running

	if (driver_state == SERVICE_RUNNING) {
		FUNC2(MSG_ALREADY_RUNNING);
		return VFD_NG;
	}

	//	start the driver

	ret = FUNC5(&driver_state);

	if (ret != ERROR_SUCCESS) {
		FUNC2(MSG_START_NG);
		FUNC6("%s", FUNC3(ret));
		return VFD_NG;
	}

	//	operation successfull

	FUNC2(MSG_START_OK);

	return VFD_OK;
}