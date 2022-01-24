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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DeviceType ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

DWORD
FUNC3(DeviceType device_type)
{
    UINT index = 0;
    HANDLE handle;

    /* Cycle through devices until an error occurs */

    while ( FUNC2(device_type, index, GENERIC_READ, &handle) == MMSYSERR_NOERROR )
    {
        FUNC0(handle);
        index ++;
    }

    FUNC1("Found %d devices of type %d\n", index, device_type);

    return index;
}