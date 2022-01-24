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
typedef  int /*<<< orphan*/  volume_name ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  ERROR_CANT_REMOUNT_VOLUME ; 
 int ERROR_SEVERITY_ERROR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FACILITY_STORAGE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int FormatStatus ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char,...) ; 

BOOL FUNC9(char* drive_name)
{
	char volume_name[51];

	// UDF requires a sync/flush, and it's also a good idea for other FS's
	FUNC3(drive_name[0]);
	if (FUNC4(drive_name, volume_name, sizeof(volume_name))) {
		if (FUNC1(drive_name)) {
			FUNC6(200);
			if (FUNC5(drive_name, volume_name)) {
				FUNC8("Successfully remounted %s as %C:", volume_name, drive_name[0]);
			} else {
				FUNC8("Failed to remount %s as %C:", volume_name, drive_name[0]);
				// This will leave the drive inaccessible and must be flagged as an error
				FormatStatus = ERROR_SEVERITY_ERROR|FUNC2(FACILITY_STORAGE)|FUNC0(ERROR_CANT_REMOUNT_VOLUME);
				return FALSE;
			}
		} else {
			FUNC8("Could not remount %s as %C: %s", volume_name, drive_name[0], FUNC7());
			// Try to continue regardless
		}
	}
	return TRUE;
}