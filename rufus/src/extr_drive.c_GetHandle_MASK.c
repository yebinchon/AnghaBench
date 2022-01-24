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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DevPath ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DRIVE_ACCESS_RETRIES ; 
 int DRIVE_ACCESS_TIMEOUT ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_SHARING_VIOLATION ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FSCTL_ALLOW_EXTENDED_DASD_IO ; 
 int /*<<< orphan*/  FSCTL_LOCK_VOLUME ; 
 int /*<<< orphan*/  FormatStatus ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  SEARCH_PROCESS_TIMEOUT ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ TRUE ; 
 char* FUNC8 () ; 
 size_t groot_len ; 
 int /*<<< orphan*/  groot_name ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static HANDLE FUNC15(char* Path, BOOL bLockDrive, BOOL bWriteAccess, BOOL bWriteShare)
{
	int i;
	BYTE access_mask = 0;
	DWORD size;
	uint64_t EndTime;
	HANDLE hDrive = INVALID_HANDLE_VALUE;
	char DevPath[MAX_PATH];

	if ((FUNC10(Path) < 5) || (Path[0] != '\\') || (Path[1] != '\\') || (Path[3] != '\\'))
		goto out;

	// Resolve a device path, so that we can look for that handle in case of access issues.
	if (FUNC11(Path, groot_name, groot_len) == 0)
		FUNC12(DevPath, &Path[groot_len]);
	else if (FUNC5(&Path[4], DevPath, sizeof(DevPath)) == 0)
		FUNC13(DevPath, "???");

	for (i = 0; i < DRIVE_ACCESS_RETRIES; i++) {
		// Try without FILE_SHARE_WRITE (unless specifically requested) so that
		// we won't be bothered by the OS or other apps when we set up our data.
		// However this means we might have to wait for an access gap...
		// We keep FILE_SHARE_READ though, as this shouldn't hurt us any, and is
		// required for enumeration.
		hDrive = FUNC0(Path, GENERIC_READ|(bWriteAccess?GENERIC_WRITE:0),
			FILE_SHARE_READ|(bWriteShare?FILE_SHARE_WRITE:0),
			NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
		if (hDrive != INVALID_HANDLE_VALUE)
			break;
		if ((FUNC2() != ERROR_SHARING_VIOLATION) && (FUNC2() != ERROR_ACCESS_DENIED))
			break;
		if (i == 0) {
			FUNC14("Waiting for access on %s [%s]...", Path, DevPath);
		} else if (!bWriteShare && (i > DRIVE_ACCESS_RETRIES/3)) {
			// If we can't seem to get a hold of the drive for some time, try to enable FILE_SHARE_WRITE...
			FUNC14("Warning: Could not obtain exclusive rights. Retrying with write sharing enabled...");
			bWriteShare = TRUE;
			// Try to report the process that is locking the drive
			// We also use bit 6 as a flag to indicate that SearchProcess was called.
			access_mask = FUNC6(DevPath, SEARCH_PROCESS_TIMEOUT, TRUE, TRUE, FALSE) | 0x40;
		}
		FUNC7(DRIVE_ACCESS_TIMEOUT / DRIVE_ACCESS_RETRIES);
	}
	if (hDrive == INVALID_HANDLE_VALUE) {
		FUNC14("Could not open %s: %s", Path, FUNC8());
		goto out;
	}

	if (bWriteAccess) {
		FUNC14("Opened %s for %s write access", Path, bWriteShare?"shared":"exclusive");
	}

	if (bLockDrive) {
		if (FUNC1(hDrive, FSCTL_ALLOW_EXTENDED_DASD_IO, NULL, 0, NULL, 0, &size, NULL)) {
			FUNC14("I/O boundary checks disabled");
		}

		EndTime = FUNC3() + DRIVE_ACCESS_TIMEOUT;
		do {
			if (FUNC1(hDrive, FSCTL_LOCK_VOLUME, NULL, 0, NULL, 0, &size, NULL))
				goto out;
			if (FUNC4(FormatStatus))	// User cancel
				break;
			FUNC7(DRIVE_ACCESS_TIMEOUT / DRIVE_ACCESS_RETRIES);
		} while (FUNC3() < EndTime);
		// If we reached this section, either we didn't manage to get a lock or the user cancelled
		FUNC14("Could not lock access to %s: %s", Path, FUNC8());
		// See if we can report the processes are accessing the drive
		if (!FUNC4(FormatStatus) && (access_mask == 0))
			access_mask = FUNC6(DevPath, SEARCH_PROCESS_TIMEOUT, TRUE, TRUE, FALSE);
		// Try to continue if the only access rights we saw were for read-only
		if ((access_mask & 0x07) != 0x01)
			FUNC9(hDrive);
	}

out:
	return hDrive;
}