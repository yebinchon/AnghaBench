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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  char WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  MediaType; } ;
typedef  char* LPCSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CANCELLED ; 
 int ERROR_GEN_FAILURE ; 
 int ERROR_SEVERITY_ERROR ; 
 int /*<<< orphan*/  EnableVolumeCompression ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FACILITY_STORAGE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FPF_COMPRESSED ; 
 int FP_COMPRESSION ; 
 int FP_QUICK ; 
 size_t FS_EXFAT ; 
 int /*<<< orphan*/ * FileSystemLabel ; 
 int /*<<< orphan*/  FormatEx ; 
 int /*<<< orphan*/  FormatExCallback ; 
 int FormatStatus ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  MSG_220 ; 
 int /*<<< orphan*/  MSG_222 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ SelectedDrive ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t WRITE_RETRIES ; 
 int /*<<< orphan*/  WRITE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ dur_mins ; 
 scalar_t__ dur_secs ; 
 int /*<<< orphan*/  fmifs ; 
 float format_percent ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ task_number ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 char* FUNC18 (char*) ; 
 size_t FUNC19 (char*) ; 

__attribute__((used)) static BOOL FUNC20(DWORD DriveIndex, uint64_t PartitionOffset, DWORD ClusterSize, LPCSTR FSName, LPCSTR Label, DWORD Flags)
{
	BOOL r = FALSE;
	FUNC5(FormatEx);
	FUNC5(EnableVolumeCompression);
	char *locale, *VolumeName = NULL;
	WCHAR* wVolumeName = NULL, *wLabel = FUNC18(Label), *wFSName = FUNC18(FSName);
	size_t i;

	if ((FUNC16(FSName, FileSystemLabel[FS_EXFAT]) == 0) && !((dur_mins == 0) && (dur_secs == 0))) {
		FUNC8(0, MSG_220, FSName, dur_mins, dur_secs);
	} else {
		FUNC8(0, MSG_222, FSName);
	}
	VolumeName = FUNC2(DriveIndex, PartitionOffset, TRUE, TRUE);
	wVolumeName = FUNC18(VolumeName);
	if (wVolumeName == NULL) {
		FUNC17("Could not read volume name");
		FormatStatus = ERROR_SEVERITY_ERROR|FUNC0(FACILITY_STORAGE)|ERROR_GEN_FAILURE;
		goto out;
	}
	// Hey, nice consistency here, Microsoft! -  FormatEx() fails if wVolumeName has
	// a trailing backslash, but EnableCompression() fails without...
	wVolumeName[FUNC19(wVolumeName)-1] = 0;		// Remove trailing backslash

	// LoadLibrary("fmifs.dll") appears to changes the locale, which can lead to
	// problems with tolower(). Make sure we restore the locale. For more details,
	// see http://comments.gmane.org/gmane.comp.gnu.mingw.user/39300
	locale = FUNC15(LC_ALL, NULL);
	FUNC7(FormatEx, fmifs);
	FUNC6(EnableVolumeCompression, fmifs);
	FUNC15(LC_ALL, locale);

	if (ClusterSize < 0x200) {
		// 0 is FormatEx's value for default, which we need to use for UDF
		ClusterSize = 0;
		FUNC17("Using default cluster size");
	} else {
		FUNC17("Using cluster size: %d bytes", ClusterSize);
	}
	format_percent = 0.0f;
	task_number = 0;

	FUNC17("%s format was selected", (Flags & FP_QUICK) ? "Quick" : "Slow");
	for (i = 0; i < WRITE_RETRIES; i++) {
		FUNC13(wVolumeName, SelectedDrive.MediaType, wFSName, wLabel,
			(Flags & FP_QUICK), ClusterSize, FormatExCallback);
		if (!FUNC4(FormatStatus) || (FUNC3(FormatStatus) == ERROR_CANCELLED))
			break;
		FUNC17("%s - Retrying...", FUNC11());
		FUNC10(WRITE_TIMEOUT);
	}
	if (FUNC4(FormatStatus))
		goto out;

	if (Flags & FP_COMPRESSION) {
		wVolumeName[FUNC19(wVolumeName)] = '\\';	// Add trailing backslash back again
		if (FUNC12(wVolumeName, FPF_COMPRESSED)) {
			FUNC17("Enabled NTFS compression");
		} else {
			FUNC17("Could not enable NTFS compression: %s", FUNC11());
		}
	}

	if (!FUNC4(FormatStatus)) {
		FUNC17("Format completed.");
		r = TRUE;
	}

out:
	if (!r && !FUNC4(FormatStatus))
		FormatStatus = ERROR_SEVERITY_ERROR|FUNC0(FACILITY_STORAGE)|FUNC9(FUNC1());
	FUNC14(VolumeName);
	FUNC14(wVolumeName);
	FUNC14(wLabel);
	FUNC14(wFSName);
	return r;
}