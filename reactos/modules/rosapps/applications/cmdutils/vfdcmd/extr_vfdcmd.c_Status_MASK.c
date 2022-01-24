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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSG_ACCESS_NG ; 
 int /*<<< orphan*/  MSG_DRIVER_FILE ; 
 int /*<<< orphan*/  MSG_DRIVER_STATUS ; 
 int /*<<< orphan*/  MSG_DRIVER_VERSION ; 
 int /*<<< orphan*/  MSG_GET_CONFIG_NG ; 
 int /*<<< orphan*/  MSG_GET_VERSION_NG ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_SHELLEXT_DISABLED ; 
 int /*<<< orphan*/  MSG_SHELLEXT_ENABLED ; 
 int /*<<< orphan*/  MSG_START_AUTO ; 
 int /*<<< orphan*/  MSG_START_BOOT ; 
 int /*<<< orphan*/  MSG_START_DEMAND ; 
 int /*<<< orphan*/  MSG_START_DISABLED ; 
 int /*<<< orphan*/  MSG_START_SYSTEM ; 
 int /*<<< orphan*/  MSG_START_TYPE ; 
 int /*<<< orphan*/  MSG_STATUS_CONT_P ; 
 int /*<<< orphan*/  MSG_STATUS_PAUSED ; 
 int /*<<< orphan*/  MSG_STATUS_PAUSE_P ; 
 int /*<<< orphan*/  MSG_STATUS_RUNNING ; 
 int /*<<< orphan*/  MSG_STATUS_START_P ; 
 int /*<<< orphan*/  MSG_STATUS_STOPPED ; 
 int /*<<< orphan*/  MSG_STATUS_STOP_P ; 
 int /*<<< orphan*/  MSG_UNKNOWN_LONG ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
#define  SERVICE_AUTO_START 139 
#define  SERVICE_BOOT_START 138 
#define  SERVICE_CONTINUE_PENDING 137 
#define  SERVICE_DEMAND_START 136 
#define  SERVICE_DISABLED 135 
#define  SERVICE_PAUSED 134 
#define  SERVICE_PAUSE_PENDING 133 
#define  SERVICE_RUNNING 132 
#define  SERVICE_START_PENDING 131 
#define  SERVICE_STOPPED 130 
#define  SERVICE_STOP_PENDING 129 
#define  SERVICE_SYSTEM_START 128 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const**) ; 
 int VFD_MAXIMUM_DEVICES ; 
 int VFD_NG ; 
 int VFD_NOT_INSTALLED ; 
 int VFD_OK ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC12 (int) ; 
 int driver_state ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

int	FUNC14(const char **args)
{
	HANDLE	hDevice;
	TCHAR	path[MAX_PATH];
	DWORD	start_type;
	DWORD	version;
	ULONG	target;
	DWORD	ret;

	FUNC7(args);

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC5(MSG_NOT_INSTALLED);
	}
	else {

		//	get current driver config

		ret = FUNC10(path, &start_type);

		if (ret != ERROR_SUCCESS) {
			FUNC5(MSG_GET_CONFIG_NG);
			FUNC13("%s", FUNC6(ret));
			return VFD_NG;
		}

		//	print driver file path

		FUNC5(MSG_DRIVER_FILE, path);

		//	print driver version
		version = 0;

		if (driver_state == SERVICE_RUNNING) {

			hDevice = FUNC12(0);

			if (hDevice != INVALID_HANDLE_VALUE) {
				ret = FUNC11(hDevice, &version);

				FUNC0(hDevice);
			}

		}

		if (version == 0) {
			ret = FUNC8(path, &version);
		}

		if (ret == ERROR_SUCCESS) {
			FUNC5(MSG_DRIVER_VERSION,
				FUNC2(version) & 0x7fff,
				FUNC3(version),
				(version & 0x80000000) ? "(debug)" : "");
		}
		else {
			FUNC5(MSG_GET_VERSION_NG);
			FUNC13("%s", FUNC6(ret));
		}


		//	print driver start type

		FUNC5(MSG_START_TYPE);

		switch (start_type) {
		case SERVICE_AUTO_START:
			FUNC5(MSG_START_AUTO);
			break;

		case SERVICE_BOOT_START:
			FUNC5(MSG_START_BOOT);
			break;

		case SERVICE_DEMAND_START:
			FUNC5(MSG_START_DEMAND);
			break;

		case SERVICE_DISABLED:
			FUNC5(MSG_START_DISABLED);
			break;

		case SERVICE_SYSTEM_START :
			FUNC5(MSG_START_SYSTEM);
			break;

		default:
			FUNC5(MSG_UNKNOWN_LONG, start_type);
			break;
		}

		//	print current driver state

		FUNC5(MSG_DRIVER_STATUS);

		switch (driver_state) {
		case SERVICE_STOPPED:
			FUNC5(MSG_STATUS_STOPPED);
			break;

		case SERVICE_START_PENDING:
			FUNC5(MSG_STATUS_START_P);
			break;

		case SERVICE_STOP_PENDING:
			FUNC5(MSG_STATUS_STOP_P);
			break;

		case SERVICE_RUNNING:
			FUNC5(MSG_STATUS_RUNNING);
			break;

		case SERVICE_CONTINUE_PENDING:
			FUNC5(MSG_STATUS_CONT_P);
			break;

		case SERVICE_PAUSE_PENDING:
			FUNC5(MSG_STATUS_PAUSE_P);
			break;

		case SERVICE_PAUSED:
			FUNC5(MSG_STATUS_PAUSED);
			break;

		default:
			FUNC5(MSG_UNKNOWN_LONG, driver_state);
			break;
		}
	}

	//	print shell extension status

	FUNC13("\n");

	if (FUNC9() == ERROR_SUCCESS) {
		FUNC5(MSG_SHELLEXT_ENABLED);
	}
	else {
		FUNC5(MSG_SHELLEXT_DISABLED);
	}

	//	if driver is not running, no more info

	if (driver_state != SERVICE_RUNNING) {
		return VFD_OK;
	}

	//	print image information

	for (target = 0; target < VFD_MAXIMUM_DEVICES; target++) {
		HANDLE hDevice = FUNC12(target);

		if (hDevice == INVALID_HANDLE_VALUE) {
			ret = FUNC1();
			FUNC5(MSG_ACCESS_NG, target + '0');
			FUNC13("%s", FUNC6(ret));
			return VFD_NG;
		}

		FUNC4(hDevice);

		FUNC0(hDevice);
	}

	return VFD_OK;
}