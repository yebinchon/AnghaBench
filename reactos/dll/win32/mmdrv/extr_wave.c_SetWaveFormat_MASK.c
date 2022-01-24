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
typedef  scalar_t__ PWAVEFORMATEX ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  IOCTL_WAVE_SET_FORMAT ; 

BOOL
FUNC3(
    HANDLE device_handle,
    PWAVEFORMATEX format)
{
    DWORD bytes_returned;
    DWORD size;

    size = FUNC2(format);

    FUNC0("SetWaveFormat\n");

    return FUNC1(device_handle,
                           IOCTL_WAVE_SET_FORMAT,
                           (PVOID) format,
                           size,
                           NULL,
                           0,
                           &bytes_returned,
                           NULL);
}