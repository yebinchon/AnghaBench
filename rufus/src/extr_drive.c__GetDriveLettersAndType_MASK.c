#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_fs_device_info ;
typedef  int /*<<< orphan*/  drives ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int Characteristics; } ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ FILE_FS_DEVICE_INFORMATION ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ DRIVE_FIXED ; 
 scalar_t__ DRIVE_REMOVABLE ; 
 scalar_t__ DRIVE_UNKNOWN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_FLOPPY_DISKETTE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FileFsDeviceInformation ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  NtQueryVolumeInformationFile ; 
 int /*<<< orphan*/  Ntdll ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 

__attribute__((used)) static BOOL FUNC14(DWORD DriveIndex, char* drive_letters, UINT* drive_type)
{
	DWORD size;
	BOOL r = FALSE;
	HANDLE hDrive = INVALID_HANDLE_VALUE;
	UINT _drive_type;
	IO_STATUS_BLOCK io_status_block;
	FILE_FS_DEVICE_INFORMATION file_fs_device_info;
	int i = 0, drive_number;
	char *drive, drives[26*4 + 1];	/* "D:\", "E:\", etc., plus one NUL */
	char logical_drive[] = "\\\\.\\#:";

	FUNC5(NtQueryVolumeInformationFile, Ntdll);

	if (drive_letters != NULL)
		drive_letters[0] = 0;
	if (drive_type != NULL)
		*drive_type = DRIVE_UNKNOWN;
	FUNC0(DriveIndex);

	// This call is weird... The buffer needs to have an extra NUL, but you're
	// supposed to provide the size without the extra NUL. And the returned size
	// does not include the NUL either *EXCEPT* if your buffer is too small...
	// But then again, this doesn't hold true if you have a 105 byte buffer and
	// pass a 4*26=104 size, as the the call will return 105 (i.e. *FAILURE*)
	// instead of 104 as it should => screw Microsoft: We'll include the NUL
	// always, as each drive string is at least 4 chars long anyway.
	size = FUNC4(sizeof(drives), drives);
	if (size == 0) {
		FUNC13("GetLogicalDriveStrings failed: %s", FUNC6());
		goto out;
	}
	if (size > sizeof(drives)) {
		FUNC13("GetLogicalDriveStrings: Buffer too small (required %d vs. %d)", size, sizeof(drives));
		goto out;
	}

	r = TRUE;	// Required to detect drives that don't have volumes assigned
	for (drive = drives ;*drive; drive += FUNC10(drive)+1) {
		if (!FUNC7(*drive))
			continue;
		*drive = (char)FUNC12((int)*drive);

		// IOCTL_STORAGE_GET_DEVICE_NUMBER's STORAGE_DEVICE_NUMBER.DeviceNumber is
		// not unique! An HDD, a DVD and probably other drives can have the same
		// value there => Use GetDriveType() to filter out unwanted devices.
		// See https://github.com/pbatard/rufus/issues/32#issuecomment-3785956
		_drive_type = FUNC3(drive);

		if ((_drive_type != DRIVE_REMOVABLE) && (_drive_type != DRIVE_FIXED))
			continue;

		FUNC11(logical_drive, "\\\\.\\%c:", drive[0]);
		hDrive = FUNC1(logical_drive, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE,
			NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
		if (hDrive == INVALID_HANDLE_VALUE) {
//			uprintf("Warning: could not open drive %c: %s", drive[0], WindowsErrorString());
			continue;
		}

		// Eliminate floppy drives
		if ((&pfNtQueryVolumeInformationFile != NULL) &&
			(FUNC8(hDrive, &io_status_block, &file_fs_device_info,
				sizeof(file_fs_device_info), FileFsDeviceInformation) == NO_ERROR) &&
			(file_fs_device_info.Characteristics & FILE_FLOPPY_DISKETTE) ) {
				continue;
		}

		drive_number = FUNC2(hDrive, logical_drive);
		FUNC9(hDrive);
		if (drive_number == DriveIndex) {
			r = TRUE;
			if (drive_letters != NULL)
				drive_letters[i++] = *drive;
			// The drive type should be the same for all volumes, so we can overwrite
			if (drive_type != NULL)
				*drive_type = _drive_type;
		}
	}

out:
	if (drive_letters != NULL)
		drive_letters[i] = 0;
	return r;
}