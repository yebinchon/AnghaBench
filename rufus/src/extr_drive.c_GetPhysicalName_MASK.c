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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

char* FUNC3(DWORD DriveIndex)
{
	BOOL success = FALSE;
	char physical_name[24];

	FUNC0(DriveIndex);
	FUNC2(physical_name, "\\\\.\\PhysicalDrive%lu", DriveIndex);
	success = TRUE;
out:
	return (success)?FUNC1(physical_name):NULL;
}