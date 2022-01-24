#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int SectorSize; } ;
struct TYPE_3__ {char* _handle; int _offset; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ FAKE_FD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BT_FREEDOS ; 
 int /*<<< orphan*/  BT_IMAGE ; 
 int /*<<< orphan*/  BT_REACTOS ; 
 int ERROR_SEVERITY_ERROR ; 
 int ERROR_WRITE_FAULT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FACILITY_STORAGE ; 
 int /*<<< orphan*/  FALSE ; 
#define  FS_FAT16 130 
#define  FS_FAT32 129 
#define  FS_NTFS 128 
 int FormatStatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ SelectedDrive ; 
 int /*<<< orphan*/  TRUE ; 
 int actual_fs_type ; 
 int /*<<< orphan*/  boot_type ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  img_report ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC22(HANDLE hLogicalVolume)
{
	int i;
	FAKE_FD fake_fd = { 0 };
	FILE* fp = (FILE*)&fake_fd;
	const char* using_msg = "Using %s %s partition boot record";

	fake_fd._handle = (char*)hLogicalVolume;
	FUNC8(SelectedDrive.SectorSize);

	switch (actual_fs_type) {
	case FS_FAT16:
		FUNC9(using_msg, FUNC4(), "FAT16");
		if (!FUNC5(fp)) {
			FUNC9("New volume does not have a FAT16 boot sector - aborting");
			break;
		}
		FUNC9("Confirmed new volume has a FAT16 boot sector");
		if (boot_type == BT_FREEDOS) {
			if (!FUNC11(fp, 0)) break;
		} else if (boot_type == BT_REACTOS) {
			if (!FUNC12(fp, 0)) break;
		} else if ((boot_type == BT_IMAGE) && FUNC2(img_report)) {
			FUNC9("FAT16 is not supported for KolibriOS\n"); break;
		} else {
			if (!FUNC10(fp, 0)) break;
		}
		// Disk Drive ID needs to be corrected on XP
		if (!FUNC20(fp))
			break;
		return TRUE;
	case FS_FAT32:
		FUNC9(using_msg, FUNC4(), "FAT32");
		for (i=0; i<2; i++) {
			if (!FUNC6(fp)) {
				FUNC9("New volume does not have a %s FAT32 boot sector - aborting\n", i?"secondary":"primary");
				break;
			}
			FUNC9("Confirmed new volume has a %s FAT32 boot sector\n", i?"secondary":"primary");
			FUNC9("Setting %s FAT32 boot sector for boot...\n", i?"secondary":"primary");
			if (boot_type == BT_FREEDOS) {
				if (!FUNC14(fp, 0)) break;
			} else if (boot_type == BT_REACTOS) {
				if (!FUNC18(fp, 0)) break;
			} else if ((boot_type == BT_IMAGE) && FUNC2(img_report)) {
				if (!FUNC15(fp, 0)) break;
			} else if ((boot_type == BT_IMAGE) && FUNC1(img_report)) {
				if (!FUNC17(fp, 0)) break;
			} else if ((boot_type == BT_IMAGE) && FUNC3(img_report)) {
				if (!FUNC16(fp, 0)) break;
			} else {
				if (!FUNC13(fp, 0)) break;
			}
			// Disk Drive ID needs to be corrected on XP
			if (!FUNC21(fp))
				break;
			fake_fd._offset += 6 * SelectedDrive.SectorSize;
		}
		return TRUE;
	case FS_NTFS:
		FUNC9(using_msg, FUNC4(), "NTFS");
		if (!FUNC7(fp)) {
			FUNC9("New volume does not have an NTFS boot sector - aborting\n");
			break;
		}
		FUNC9("Confirmed new volume has an NTFS boot sector\n");
		if (!FUNC19(fp)) break;
		// Note: NTFS requires a full remount after writing the PBR. We dismount when we lock
		// and also go through a forced remount, so that shouldn't be an issue.
		// But with NTFS, if you don't remount, you don't boot!
		return TRUE;
	default:
		FUNC9("Unsupported FS for FS BR processing - aborting\n");
		break;
	}
	FormatStatus = ERROR_SEVERITY_ERROR|FUNC0(FACILITY_STORAGE)|ERROR_WRITE_FAULT;
	return FALSE;
}