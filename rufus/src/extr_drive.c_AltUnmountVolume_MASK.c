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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int DDD_NO_BROADCAST_SYSTEM ; 
 int DDD_REMOVE_DEFINITION ; 
 int /*<<< orphan*/  FUNC0 (int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 

BOOL FUNC3(const char* drive_name, BOOL bSilent)
{
	if (drive_name == NULL)
		return FALSE;
	if (!FUNC0(DDD_REMOVE_DEFINITION | DDD_NO_BROADCAST_SYSTEM, drive_name, NULL)) {
		FUNC2("Could not unmount '%s': %s", drive_name, FUNC1());
		return FALSE;
	}
	FUNC2("Successfully unmounted '%s'", drive_name);
	return TRUE;
}