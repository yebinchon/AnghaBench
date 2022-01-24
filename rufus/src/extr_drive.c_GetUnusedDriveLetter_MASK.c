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
typedef  int /*<<< orphan*/  drives ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

char FUNC6(void)
{
	DWORD size;
	char drive_letter = 'Z'+1, *drive, drives[26*4 + 1];	/* "D:\", "E:\", etc., plus one NUL */

	size = FUNC0(sizeof(drives), drives);
	if (size == 0) {
		FUNC5("GetLogicalDriveStrings failed: %s", FUNC1());
		goto out;
	}
	if (size > sizeof(drives)) {
		FUNC5("GetLogicalDriveStrings: Buffer too small (required %d vs. %d)", size, sizeof(drives));
		goto out;
	}

	for (drive_letter = 'C'; drive_letter <= 'Z'; drive_letter++) {
		for (drive = drives ;*drive; drive += FUNC3(drive)+1) {
			if (!FUNC2(*drive))
				continue;
			if (drive_letter == (char)FUNC4((int)*drive))
				break;
		}
		if (!*drive)
			break;
	}

out:
	return (drive_letter>'Z')?0:drive_letter;
}