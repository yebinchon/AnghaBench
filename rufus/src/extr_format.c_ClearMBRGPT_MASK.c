#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  FirstDataSector; } ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_FOR_USER_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_SEVERITY_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FACILITY_STORAGE ; 
 scalar_t__ FALSE ; 
 int FormatStatus ; 
 int MAX_SECTORS_TO_CLEAR ; 
 int /*<<< orphan*/  MSG_224 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ SelectedDrive ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int WRITE_RETRIES ; 
 int WRITE_TIMEOUT ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int,unsigned char*) ; 

__attribute__((used)) static BOOL FUNC9(HANDLE hPhysicalDrive, LONGLONG DiskSize, DWORD SectorSize, BOOL add1MB)
{
	BOOL r = FALSE;
	uint64_t i, j, last_sector = DiskSize/SectorSize, num_sectors_to_clear;
	unsigned char* pBuf = (unsigned char*) FUNC4(SectorSize, 1);

	FUNC2(0, MSG_224);
	if (pBuf == NULL) {
		FormatStatus = ERROR_SEVERITY_ERROR|FUNC1(FACILITY_STORAGE)|ERROR_NOT_ENOUGH_MEMORY;
		goto out;
	}
	// http://en.wikipedia.org/wiki/GUID_Partition_Table tells us we should clear 34 sectors at the
	// beginning and 33 at the end. We bump these values to MAX_SECTORS_TO_CLEAR each end to help
	// with reluctant access to large drive.

	// We try to clear at least 1MB + the PBR when Large FAT32 is selected (add1MB), but
	// don't do it otherwise, as it seems unnecessary and may take time for slow drives.
	// Also, for various reasons (one of which being that Windows seems to have issues
	// with GPT drives that contain a lot of small partitions) we try not not to clear
	// sectors further than the lowest partition already residing on the disk.
	num_sectors_to_clear = FUNC5(SelectedDrive.FirstDataSector, (DWORD)((add1MB ? 2048 : 0) + MAX_SECTORS_TO_CLEAR));
	// Special case for big floppy disks (FirstDataSector = 0)
	if (num_sectors_to_clear < 4)
		num_sectors_to_clear = (DWORD)((add1MB ? 2048 : 0) + MAX_SECTORS_TO_CLEAR);

	FUNC7("Erasing %d sectors", num_sectors_to_clear);
	for (i=0; i<num_sectors_to_clear; i++) {
		for (j = 1; j <= WRITE_RETRIES; j++) {
			CHECK_FOR_USER_CANCEL;
			if (FUNC8(hPhysicalDrive, SectorSize, i, 1, pBuf) != SectorSize) {
				if (j >= WRITE_RETRIES)
					goto out;
				FUNC7("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);
				// Don't sit idly but use the downtime to check for conflicting processes...
				FUNC3(FUNC0(WRITE_TIMEOUT, FALSE));
			}
		}
	}
	for (i = last_sector - MAX_SECTORS_TO_CLEAR; i < last_sector; i++) {
		for (j = 1; j <= WRITE_RETRIES; j++) {
			CHECK_FOR_USER_CANCEL;
			if (FUNC8(hPhysicalDrive, SectorSize, i, 1, pBuf) != SectorSize) {
				if (j < WRITE_RETRIES) {
					FUNC7("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);
					FUNC3(FUNC0(WRITE_TIMEOUT, FALSE));
				} else {
					// Windows seems to be an ass about keeping a lock on a backup GPT,
					// so we try to be lenient about not being able to clear it.
					FUNC7("Warning: Failed to clear backup GPT...");
					r = TRUE;
					goto out;
				}
			}
		}
	}
	r = TRUE;

out:
	FUNC6(pBuf);
	return r;
}