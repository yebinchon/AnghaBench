#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int SectorSize; } ;
struct TYPE_9__ {int /*<<< orphan*/  uses_minint; scalar_t__ has_grub4dos; scalar_t__ has_grub2; } ;
struct TYPE_8__ {char* _handle; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ FAKE_FD ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* APPLICATION_NAME ; 
 scalar_t__ BT_GRUB2 ; 
 scalar_t__ BT_GRUB4DOS ; 
 scalar_t__ BT_IMAGE ; 
 scalar_t__ BT_NON_BOOTABLE ; 
 scalar_t__ BT_REACTOS ; 
 scalar_t__ BT_SYSLINUX_V4 ; 
 scalar_t__ BT_SYSLINUX_V6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_READ_FAULT ; 
 int ERROR_SEVERITY_ERROR ; 
 int ERROR_WRITE_FAULT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FACILITY_STORAGE ; 
 int /*<<< orphan*/  FALSE ; 
#define  FS_FAT16 129 
#define  FS_FAT32 128 
 int FormatStatus ; 
 scalar_t__ FUNC4 (TYPE_2__) ; 
 scalar_t__ FUNC5 (TYPE_2__) ; 
 scalar_t__ FUNC6 (TYPE_2__) ; 
 scalar_t__ FUNC7 (TYPE_2__) ; 
 int /*<<< orphan*/  IDC_RUFUS_MBR ; 
 int /*<<< orphan*/  IOCTL_DISK_UPDATE_PROPERTIES ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARTITION_STYLE_GPT ; 
 TYPE_3__ SelectedDrive ; 
 scalar_t__ TT_BIOS ; 
 scalar_t__ TT_UEFI ; 
 char* FUNC10 () ; 
 scalar_t__ FUNC11 (int,int) ; 
 scalar_t__ allow_dual_uefi_bios ; 
 scalar_t__ boot_type ; 
 int /*<<< orphan*/  fs_type ; 
 int /*<<< orphan*/  hDiskID ; 
 int /*<<< orphan*/  hFileSystem ; 
 TYPE_2__ img_report ; 
 scalar_t__ partition_type ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ target_type ; 
 int /*<<< orphan*/  FUNC15 (char const*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC26(HANDLE hPhysicalDrive)
{
	BOOL r = FALSE;
	DWORD size;
	unsigned char* buffer = NULL;
	FAKE_FD fake_fd = { 0 };
	FILE* fp = (FILE*)&fake_fd;
	const char* using_msg = "Using %s MBR";

//	AnalyzeMBR(hPhysicalDrive, "Drive", FALSE);

	if (SelectedDrive.SectorSize < 512)
		goto out;

	if (partition_type == PARTITION_STYLE_GPT) {
		// Add a notice in the protective MBR
		fake_fd._handle = (char*)hPhysicalDrive;
		FUNC14(SelectedDrive.SectorSize);
		FUNC15(using_msg, "Rufus protective");
		r = FUNC20(fp);
		goto notify;
	}

	// FormatEx rewrites the MBR and removes the LBA attribute of FAT16
	// and FAT32 partitions - we need to correct this in the MBR
	buffer = (unsigned char*)FUNC11(SelectedDrive.SectorSize, 16);
	if (buffer == NULL) {
		FUNC15("Could not allocate memory for MBR");
		FormatStatus = ERROR_SEVERITY_ERROR|FUNC3(FACILITY_STORAGE)|ERROR_NOT_ENOUGH_MEMORY;
		goto out;
	}

	if (!FUNC12(hPhysicalDrive, SelectedDrive.SectorSize, 0, 1, buffer)) {
		FUNC15("Could not read MBR\n");
		FormatStatus = ERROR_SEVERITY_ERROR|FUNC3(FACILITY_STORAGE)|ERROR_READ_FAULT;
		goto out;
	}

	switch (FUNC1(hFileSystem, FUNC0(hFileSystem))) {
	case FS_FAT16:
		if (buffer[0x1c2] == 0x0e) {
			FUNC15("Partition is already FAT16 LBA...\n");
		} else if ((buffer[0x1c2] != 0x04) && (buffer[0x1c2] != 0x06)) {
			FUNC15("Warning: converting a non FAT16 partition to FAT16 LBA: FS type=0x%02x\n", buffer[0x1c2]);
		}
		buffer[0x1c2] = 0x0e;
		break;
	case FS_FAT32:
		if (buffer[0x1c2] == 0x0c) {
			FUNC15("Partition is already FAT32 LBA...\n");
		} else if (buffer[0x1c2] != 0x0b) {
			FUNC15("Warning: converting a non FAT32 partition to FAT32 LBA: FS type=0x%02x\n", buffer[0x1c2]);
		}
		buffer[0x1c2] = 0x0c;
		break;
	}
	if ((boot_type != BT_NON_BOOTABLE) && (target_type == TT_BIOS)) {
		// Set first partition bootable - masquerade as per the DiskID selected
		buffer[0x1be] = FUNC9(IDC_RUFUS_MBR) ?
			(BYTE)FUNC1(hDiskID, FUNC0(hDiskID)):0x80;
		FUNC15("Set bootable USB partition as 0x%02X\n", buffer[0x1be]);
	}

	if (!FUNC22(hPhysicalDrive, SelectedDrive.SectorSize, 0, 1, buffer)) {
		FUNC15("Could not write MBR\n");
		FormatStatus = ERROR_SEVERITY_ERROR|FUNC3(FACILITY_STORAGE)|ERROR_WRITE_FAULT;
		goto out;
	}

	fake_fd._handle = (char*)hPhysicalDrive;
	FUNC14(SelectedDrive.SectorSize);

	// What follows is really a case statement with complex conditions listed
	// by order of preference
	if ((boot_type == BT_IMAGE) && FUNC6(img_report) && (allow_dual_uefi_bios) && (target_type == TT_BIOS))
		goto windows_mbr;

	// Non bootable or forced UEFI (zeroed MBR)
	if ((boot_type == BT_NON_BOOTABLE) || (target_type == TT_UEFI)) {
		FUNC15(using_msg, "Zeroed");
		r = FUNC25(fp);
		goto notify;
	}

	// Syslinux
	if ( (boot_type == BT_SYSLINUX_V4) || (boot_type == BT_SYSLINUX_V6) ||
		 ((boot_type == BT_IMAGE) && FUNC5(img_report)) ) {
		FUNC15(using_msg, "Syslinux");
		r = FUNC23(fp);
		goto notify;
	}

	// Grub 2.0
	if ( ((boot_type == BT_IMAGE) && (img_report.has_grub2)) || (boot_type == BT_GRUB2) ) {
		FUNC15(using_msg, "Grub 2.0");
		r = FUNC16(fp);
		goto notify;
	}

	// Grub4DOS
	if ( ((boot_type == BT_IMAGE) && (img_report.has_grub4dos)) || (boot_type == BT_GRUB4DOS) ) {
		FUNC15(using_msg, "Grub4DOS");
		r = FUNC17(fp);
		goto notify;
	}

	// ReactOS
	if (boot_type == BT_REACTOS) {
		FUNC15(using_msg, "ReactOS");
		r = FUNC19(fp);
		goto notify;
	}

	// KolibriOS
	if ( (boot_type == BT_IMAGE) && FUNC4(img_report) && (FUNC8(fs_type))) {
		FUNC15(using_msg, "KolibriOS");
		r = FUNC18(fp);
		goto notify;
	}

	// If everything else failed, fall back to a conventional Windows/Rufus MBR
windows_mbr:
	if ((FUNC7(img_report) && !img_report.uses_minint) || (FUNC9(IDC_RUFUS_MBR))) {
		FUNC15(using_msg, APPLICATION_NAME);
		r = FUNC21(fp);
	} else {
		FUNC15(using_msg, "Windows 7");
		r = FUNC24(fp);
	}

notify:
	// Tell the system we've updated the disk properties
	if (!FUNC2(hPhysicalDrive, IOCTL_DISK_UPDATE_PROPERTIES, NULL, 0, NULL, 0, &size, NULL))
		FUNC15("Failed to notify system about disk properties update: %s\n", FUNC10());

out:
	FUNC13(buffer);
	return r;
}