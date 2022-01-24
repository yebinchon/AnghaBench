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
struct TYPE_7__ {int /*<<< orphan*/  SectorSize; } ;
struct TYPE_6__ {int /*<<< orphan*/  str; scalar_t__ (* fn ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {char* _handle; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ FAKE_FD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__ SelectedDrive ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* known_pbr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 

BOOL FUNC7(HANDLE hLogicalVolume)
{
	const char* pbr_name = "Partition Boot Record";
	FAKE_FD fake_fd = { 0 };
	FILE* fp = (FILE*)&fake_fd;
	int i;

	fake_fd._handle = (char*)hLogicalVolume;
	FUNC4(SelectedDrive.SectorSize);

	if (!FUNC1(fp)) {
		FUNC6("Volume does not have an x86 %s", pbr_name);
		return FALSE;
	}

	if (FUNC2(fp) || FUNC3(fp)) {
		for (i=0; i<FUNC0(known_pbr); i++) {
			if (known_pbr[i].fn(fp)) {
				FUNC6("Drive has a %s %s", known_pbr[i].str, pbr_name);
				return TRUE;
			}
		}
		FUNC6("Volume has an unknown FAT16 or FAT32 %s", pbr_name);
	} else {
		FUNC6("Volume has an unknown %s", pbr_name);
	}
	return TRUE;
}