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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ MMRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DeviceType ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_FLAG_OVERLAPPED ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_DEVICE_NAME_LENGTH ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 

MMRESULT
FUNC6(
    DeviceType device_type,
    UINT device_id,
    DWORD access,
    HANDLE* handle)
{
    MMRESULT result;
    WCHAR device_name[MAX_DEVICE_NAME_LENGTH];
    DWORD open_flags = 0;

    FUNC0(handle);

    /* Glue the base device name and the ID together */

    result = FUNC1(device_type, device_id, device_name);

    FUNC3("Opening kernel device %ls\n", device_name);

    if ( result != MMSYSERR_NOERROR )
        return result;

    /* We want overlapped I/O when writing */

    if ( access != GENERIC_READ )
        open_flags = FILE_FLAG_OVERLAPPED;

    /* Now try opening... */

    *handle = FUNC2(device_name,
                         access,
                         FILE_SHARE_WRITE,
                         NULL,
                         OPEN_EXISTING,
                         open_flags,
                         NULL);

    if ( *handle == INVALID_HANDLE_VALUE )
        return FUNC4(FUNC5());

    return MMSYSERR_NOERROR;
}