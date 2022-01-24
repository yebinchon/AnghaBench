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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
#define  ERROR_ACCESS_DENIED 157 
#define  ERROR_BADBLOCKS_FAILURE 156 
#define  ERROR_BAD_SIGNATURE 155 
#define  ERROR_CANCELLED 154 
#define  ERROR_CANNOT_COPY 153 
#define  ERROR_CANT_ASSIGN_LETTER 152 
#define  ERROR_CANT_MOUNT_VOLUME 151 
#define  ERROR_CANT_PATCH 150 
#define  ERROR_CANT_QUICK_FORMAT 149 
#define  ERROR_CANT_REMOUNT_VOLUME 148 
#define  ERROR_CANT_START_THREAD 147 
#define  ERROR_DEVICE_IN_USE 146 
#define  ERROR_GEN_FAILURE 145 
#define  ERROR_INCOMPATIBLE_FS 144 
#define  ERROR_INSTALL_FAILURE 143 
#define  ERROR_INVALID_CLUSTER_SIZE 142 
#define  ERROR_INVALID_HANDLE 141 
#define  ERROR_INVALID_VOLUME_SIZE 140 
#define  ERROR_ISO_EXTRACT 139 
#define  ERROR_ISO_SCAN 138 
#define  ERROR_LABEL_TOO_LONG 137 
#define  ERROR_NOT_ENOUGH_MEMORY 136 
#define  ERROR_NOT_READY 135 
#define  ERROR_NOT_SUPPORTED 134 
#define  ERROR_NO_MEDIA_IN_DRIVE 133 
#define  ERROR_OPEN_FAILED 132 
#define  ERROR_PARTITION_FAILURE 131 
#define  ERROR_READ_FAULT 130 
 int ERROR_SUCCESS ; 
#define  ERROR_WRITE_FAULT 129 
#define  ERROR_WRITE_PROTECT 128 
 scalar_t__ FACILITY_STORAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_050 ; 
 int /*<<< orphan*/  MSG_051 ; 
 int /*<<< orphan*/  MSG_052 ; 
 int /*<<< orphan*/  MSG_053 ; 
 int /*<<< orphan*/  MSG_054 ; 
 int /*<<< orphan*/  MSG_055 ; 
 int /*<<< orphan*/  MSG_056 ; 
 int /*<<< orphan*/  MSG_057 ; 
 int /*<<< orphan*/  MSG_058 ; 
 int /*<<< orphan*/  MSG_059 ; 
 int /*<<< orphan*/  MSG_060 ; 
 int /*<<< orphan*/  MSG_061 ; 
 int /*<<< orphan*/  MSG_062 ; 
 int /*<<< orphan*/  MSG_063 ; 
 int /*<<< orphan*/  MSG_064 ; 
 int /*<<< orphan*/  MSG_065 ; 
 int /*<<< orphan*/  MSG_066 ; 
 int /*<<< orphan*/  MSG_067 ; 
 int /*<<< orphan*/  MSG_068 ; 
 int /*<<< orphan*/  MSG_069 ; 
 int /*<<< orphan*/  MSG_070 ; 
 int /*<<< orphan*/  MSG_071 ; 
 int /*<<< orphan*/  MSG_072 ; 
 int /*<<< orphan*/  MSG_073 ; 
 int /*<<< orphan*/  MSG_074 ; 
 int /*<<< orphan*/  MSG_075 ; 
 int /*<<< orphan*/  MSG_076 ; 
 int /*<<< orphan*/  MSG_077 ; 
 int /*<<< orphan*/  MSG_078 ; 
 int /*<<< orphan*/  MSG_079 ; 
 int /*<<< orphan*/  MSG_172 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char const* FUNC4 () ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 

const char* FUNC6(DWORD error_code)
{
	if ( (!FUNC0(error_code)) || (FUNC1(error_code) == ERROR_SUCCESS)) {
		return FUNC5(MSG_050);
	}
	if (FUNC2(error_code) != FACILITY_STORAGE) {
		FUNC3(error_code);
		return FUNC4();
	}
	switch (FUNC1(error_code)) {
	case ERROR_GEN_FAILURE:
		return FUNC5(MSG_051);
	case ERROR_INCOMPATIBLE_FS:
		return FUNC5(MSG_052);
	case ERROR_ACCESS_DENIED:
		return FUNC5(MSG_053);
	case ERROR_WRITE_PROTECT:
		return FUNC5(MSG_054);
	case ERROR_DEVICE_IN_USE:
		return FUNC5(MSG_055);
	case ERROR_CANT_QUICK_FORMAT:
		return FUNC5(MSG_056);
	case ERROR_LABEL_TOO_LONG:
		return FUNC5(MSG_057);
	case ERROR_INVALID_HANDLE:
		return FUNC5(MSG_058);
	case ERROR_INVALID_CLUSTER_SIZE:
		return FUNC5(MSG_059);
	case ERROR_INVALID_VOLUME_SIZE:
		return FUNC5(MSG_060);
	case ERROR_NO_MEDIA_IN_DRIVE:
		return FUNC5(MSG_061);
	case ERROR_NOT_SUPPORTED:
		return FUNC5(MSG_062);
	case ERROR_NOT_ENOUGH_MEMORY:
		return FUNC5(MSG_063);
	case ERROR_READ_FAULT:
		return FUNC5(MSG_064);
	case ERROR_WRITE_FAULT:
		return FUNC5(MSG_065);
	case ERROR_INSTALL_FAILURE:
		return FUNC5(MSG_066);
	case ERROR_OPEN_FAILED:
		return FUNC5(MSG_067);
	case ERROR_PARTITION_FAILURE:
		return FUNC5(MSG_068);
	case ERROR_CANNOT_COPY:
		return FUNC5(MSG_069);
	case ERROR_CANCELLED:
		return FUNC5(MSG_070);
	case ERROR_CANT_START_THREAD:
		return FUNC5(MSG_071);
	case ERROR_BADBLOCKS_FAILURE:
		return FUNC5(MSG_072);
	case ERROR_ISO_SCAN:
		return FUNC5(MSG_073);
	case ERROR_ISO_EXTRACT:
		return FUNC5(MSG_074);
	case ERROR_CANT_REMOUNT_VOLUME:
		return FUNC5(MSG_075);
	case ERROR_CANT_PATCH:
		return FUNC5(MSG_076);
	case ERROR_CANT_ASSIGN_LETTER:
		return FUNC5(MSG_077);
	case ERROR_CANT_MOUNT_VOLUME:
		return FUNC5(MSG_078);
	case ERROR_NOT_READY:
		return FUNC5(MSG_079);
	case ERROR_BAD_SIGNATURE:
		return FUNC5(MSG_172);
	default:
		FUNC3(error_code);
		return FUNC4();
	}
}