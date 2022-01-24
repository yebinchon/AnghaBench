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
typedef  int /*<<< orphan*/  geometry ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOCTL_DISK_GET_DRIVE_GEOMETRY_EX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

BOOL FUNC3(DWORD DriveIndex)
{
	BOOL r;
	HANDLE hPhysical;
	DWORD size;
	BYTE geometry[128];

	hPhysical = FUNC1(DriveIndex, FALSE, FALSE, TRUE);
	r = FUNC0(hPhysical, IOCTL_DISK_GET_DRIVE_GEOMETRY_EX,
			NULL, 0, geometry, sizeof(geometry), &size, NULL) && (size > 0);
	FUNC2(hPhysical);
	return r;
}