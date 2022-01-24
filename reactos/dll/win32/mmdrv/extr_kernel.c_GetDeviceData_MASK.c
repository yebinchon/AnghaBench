#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  overlap ;
struct TYPE_5__ {int /*<<< orphan*/  hEvent; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  TYPE_1__ OVERLAPPED ;
typedef  int /*<<< orphan*/  MMRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ ERROR_IO_PENDING ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  MMSYSERR_NOMEM ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ WAIT_IO_COMPLETION ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

MMRESULT
FUNC10(
    HANDLE device_handle,
    DWORD ioctl,
    PBYTE output_buffer,
    DWORD buffer_size)
{
    OVERLAPPED overlap;
    DWORD bytes_returned;
    BOOL success;
    DWORD transfer;

    FUNC2("GetDeviceData\n");

    FUNC9(&overlap, 0, sizeof(overlap));

    overlap.hEvent = FUNC1(NULL, FALSE, FALSE, NULL);

    if ( ! overlap.hEvent )
        return MMSYSERR_NOMEM;

    success = FUNC3(device_handle,
                              ioctl,
                              NULL,
                              0,
                              output_buffer,
                              buffer_size,
                              &bytes_returned,
                              &overlap);

    if ( ! success )
    {
        if ( FUNC5() == ERROR_IO_PENDING )
        {
            if ( ! FUNC6(device_handle, &overlap, &transfer, TRUE) )
            {
                FUNC0(overlap.hEvent);
                return FUNC4(FUNC5());
            }
        }
        else
        {
            FUNC0(overlap.hEvent);
            return FUNC4(FUNC5());
        }
    }

    while ( TRUE )
    {
        FUNC7(overlap.hEvent);

        if ( FUNC8(overlap.hEvent, 0, TRUE) != WAIT_IO_COMPLETION )
        {
            break;
        }
    }

    FUNC0(overlap.hEvent);

    return MMSYSERR_NOERROR;
}