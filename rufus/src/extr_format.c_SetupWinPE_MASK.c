#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int winpe; scalar_t__ uses_minint; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int INVALID_FILE_SIZE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_2__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WINPE_AMD64 ; 
 int WINPE_I386 ; 
 int WINPE_MININT ; 
 int /*<<< orphan*/  WRITE_RETRIES ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hDiskID ; 
 TYPE_3__ img_report ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

__attribute__((used)) static BOOL FUNC19(char drive_letter)
{
	char src[64], dst[32];
	const char* basedir[3] = { "i386", "amd64", "minint" };
	const char* patch_str_org[2] = { "\\minint\\txtsetup.sif", "\\minint\\system32\\" };
	const char* patch_str_rep[2][2] = { { "\\i386\\txtsetup.sif", "\\i386\\system32\\" } ,
										{ "\\amd64\\txtsetup.sif", "\\amd64\\system32\\" } };
	const char *win_nt_bt_org = "$win_nt$.~bt";
	const char *rdisk_zero = "rdisk(0)";
	const LARGE_INTEGER liZero = { {0, 0} };
	char setupsrcdev[64];
	HANDLE handle = INVALID_HANDLE_VALUE;
	DWORD i, j, size, rw_size, index = 0;
	BOOL r = FALSE;
	char* buffer = NULL;

	if ((img_report.winpe & WINPE_AMD64) == WINPE_AMD64)
		index = 1;
	else if ((img_report.winpe & WINPE_MININT) == WINPE_MININT)
		index = 2;
	// Allow other values than harddisk 1, as per user choice for disk ID
	FUNC15(setupsrcdev, "SetupSourceDevice = \"\\device\\harddisk%d\\partition1\"",
		FUNC1(hDiskID));
	// Copy of ntdetect.com in root
	FUNC15(src, "%c:\\%s\\ntdetect.com", drive_letter, basedir[2*(index/2)]);
	FUNC15(dst, "%c:\\ntdetect.com", drive_letter);
	FUNC2(src, dst, TRUE);
	if (!img_report.uses_minint) {
		// Create a copy of txtsetup.sif, as we want to keep the i386/amd64 files unmodified
		FUNC15(src, "%c:\\%s\\txtsetup.sif", drive_letter, basedir[index]);
		FUNC15(dst, "%c:\\txtsetup.sif", drive_letter);
		if (!FUNC2(src, dst, TRUE)) {
			FUNC18("Did not copy %s as %s: %s\n", src, dst, FUNC7());
		}
		if (FUNC9(dst, "[SetupData]", setupsrcdev, FALSE) == NULL) {
			FUNC18("Failed to add SetupSourceDevice in %s\n", dst);
			goto out;
		}
		FUNC18("Successfully added '%s' to %s\n", setupsrcdev, dst);
	}

	FUNC15(src, "%c:\\%s\\setupldr.bin", drive_letter,  basedir[2*(index/2)]);
	FUNC15(dst, "%c:\\BOOTMGR", drive_letter);
	if (!FUNC2(src, dst, TRUE)) {
		FUNC18("Did not copy %s as %s: %s\n", src, dst, FUNC7());
	}

	// \minint with /minint option doesn't require further processing => return true
	// \minint and no \i386 without /minint is unclear => return error
	if (img_report.winpe&WINPE_MININT) {
		if (img_report.uses_minint) {
			FUNC18("Detected \\minint directory with /minint option: nothing to patch\n");
			r = TRUE;
		} else if (!(img_report.winpe&(WINPE_I386|WINPE_AMD64))) {
			FUNC18("Detected \\minint directory only but no /minint option: not sure what to do\n");
		}
		goto out;
	}

	// At this stage we only handle \i386
	handle = FUNC3(dst, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ,
		NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (handle == INVALID_HANDLE_VALUE) {
		FUNC18("Could not open %s for patching: %s\n", dst, FUNC7());
		goto out;
	}
	size = FUNC4(handle, NULL);
	if (size == INVALID_FILE_SIZE) {
		FUNC18("Could not get size for file %s: %s\n", dst, FUNC7());
		goto out;
	}
	buffer = (char*)FUNC10(size);
	if (buffer == NULL)
		goto out;
	if ((!FUNC5(handle, buffer, size, &rw_size, NULL)) || (size != rw_size)) {
		FUNC18("Could not read file %s: %s\n", dst, FUNC7());
		goto out;
	}
	if (!FUNC6(handle, liZero, NULL, FILE_BEGIN)) {
		FUNC18("Could not rewind file %s: %s\n", dst, FUNC7());
		goto out;
	}

	// Patch setupldr.bin
	FUNC18("Patching file %s\n", dst);
	// Remove CRC check for 32 bit part of setupldr.bin from Win2k3
	if ((size > 0x2061) && (buffer[0x2060] == 0x74) && (buffer[0x2061] == 0x03)) {
		buffer[0x2060] = 0xeb;
		buffer[0x2061] = 0x1a;
		FUNC18("  0x00002060: 0x74 0x03 -> 0xEB 0x1A (disable Win2k3 CRC check)\n");
	}
	for (i=1; i<size-32; i++) {
		for (j=0; j<FUNC0(patch_str_org); j++) {
			if (FUNC14(&buffer[i], patch_str_org[j], FUNC17(patch_str_org[j])-1) == 0) {
				FUNC18("  0x%08X: '%s' -> '%s'\n", i, &buffer[i], patch_str_rep[index][j]);
				FUNC16(&buffer[i], patch_str_rep[index][j]);
				i += (DWORD)FUNC11(FUNC17(patch_str_org[j]), FUNC17(patch_str_rep[index][j]));	// in case org is a substring of rep
			}
		}
	}

	if (!img_report.uses_minint) {
		// Additional setupldr.bin/bootmgr patching
		for (i=0; i<size-32; i++) {
			// rdisk(0) -> rdisk(#) disk masquerading
			// NB: only the first one seems to be needed
			if (FUNC14(&buffer[i], rdisk_zero, FUNC17(rdisk_zero)-1) == 0) {
				buffer[i+6] = 0x30 + FUNC1(hDiskID);
				FUNC18("  0x%08X: '%s' -> 'rdisk(%c)'\n", i, rdisk_zero, buffer[i+6]);
			}
			// $WIN_NT$_~BT -> i386/amd64
			if (FUNC14(&buffer[i], win_nt_bt_org, FUNC17(win_nt_bt_org)-1) == 0) {
				FUNC18("  0x%08X: '%s' -> '%s%s'\n", i, &buffer[i], basedir[index], &buffer[i+FUNC17(win_nt_bt_org)]);
				FUNC16(&buffer[i], basedir[index]);
				// This ensures that we keep the terminator backslash
				buffer[i+FUNC17(basedir[index])] = buffer[i+FUNC17(win_nt_bt_org)];
				buffer[i+FUNC17(basedir[index])+1] = 0;
			}
		}
	}

	if (!FUNC8(handle, buffer, size, &rw_size, WRITE_RETRIES)) {
		FUNC18("Could not write patched file: %s\n", FUNC7());
		goto out;
	}
	r = TRUE;

out:
	FUNC12(handle);
	FUNC13(buffer);
	return r;
}