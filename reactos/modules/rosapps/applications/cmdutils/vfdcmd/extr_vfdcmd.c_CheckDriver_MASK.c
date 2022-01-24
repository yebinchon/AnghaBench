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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSG_WRONG_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SERVICE_RUNNING ; 
 int VFD_NG ; 
 int VFD_OK ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ driver_state ; 

int FUNC5()
{
	char	path[MAX_PATH];
	DWORD	start;

	//	check installed driver file version

	if (FUNC3(path, &start) == ERROR_SUCCESS &&
		FUNC2(path, NULL) == ERROR_SUCCESS) {

		HANDLE hDevice;

		if (driver_state != SERVICE_RUNNING) {
			return VFD_OK;
		}

		//	check running driver version

		hDevice = FUNC4(0);

		if (hDevice != INVALID_HANDLE_VALUE) {
			FUNC0(hDevice);
			return VFD_OK;
		}
	}

	FUNC1(MSG_WRONG_DRIVER);
	return VFD_NG;
}