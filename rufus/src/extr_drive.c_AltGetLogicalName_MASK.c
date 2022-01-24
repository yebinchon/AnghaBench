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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ DeviceNumber; scalar_t__* PartitionOffset; int /*<<< orphan*/ * PartitionSize; } ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ MAX_PARTITIONS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 TYPE_1__ SelectedDrive ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t groot_len ; 
 int /*<<< orphan*/  groot_name ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

char* FUNC9(DWORD DriveIndex, uint64_t PartitionOffset, BOOL bKeepTrailingBackslash, BOOL bSilent)
{
	BOOL matching_drive = (DriveIndex == SelectedDrive.DeviceNumber);
	DWORD i;
	char *ret = NULL, volume_name[MAX_PATH], path[64];

	FUNC0(DriveIndex);

	// Match the offset to a partition index
	if (PartitionOffset == 0) {
		i = 0;
	} else if (matching_drive) {
		for (i = 0; (i < MAX_PARTITIONS) && (PartitionOffset != SelectedDrive.PartitionOffset[i]); i++);
		if (i >= MAX_PARTITIONS) {
			FUNC8("Error: Could not find a partition at offset %lld on this disk", PartitionOffset);
			goto out;
		}
	} else {
		FUNC8("Error: Searching for a partition on a non matching disk");
		goto out;
	}
	FUNC4(path, "Harddisk%luPartition%lu", DriveIndex, i + 1);
	FUNC6(volume_name, groot_name);
	if (!FUNC1(path, &volume_name[groot_len], (DWORD)(MAX_PATH - groot_len)) || (FUNC7(volume_name) < 20)) {
		FUNC8("Could not find a DOS volume name for '%s': %s", path, FUNC2());
		// If we are on the right drive, we enable a custom access mode through physical + offset
		if (!matching_drive)
			goto out;
		FUNC4(volume_name, "\\\\.\\PhysicalDrive%lu%s %I64u %I64u", DriveIndex, bKeepTrailingBackslash ? "\\" : "",
			SelectedDrive.PartitionOffset[i], SelectedDrive.PartitionSize[i]);
	} else if (bKeepTrailingBackslash) {
		FUNC5(volume_name, "\\");
	}
	ret = FUNC3(volume_name);

out:
	return ret;
}