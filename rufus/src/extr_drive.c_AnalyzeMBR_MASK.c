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
 TYPE_2__* known_mbr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 

BOOL FUNC5(HANDLE hPhysicalDrive, const char* TargetName, BOOL bSilent)
{
	const char* mbr_name = "Master Boot Record";
	FAKE_FD fake_fd = { 0 };
	FILE* fp = (FILE*)&fake_fd;
	int i;

	fake_fd._handle = (char*)hPhysicalDrive;
	FUNC2(SelectedDrive.SectorSize);

	if (!FUNC1(fp)) {
		FUNC4("%s does not have an x86 %s", TargetName, mbr_name);
		return FALSE;
	}
	for (i=0; i<FUNC0(known_mbr); i++) {
		if (known_mbr[i].fn(fp)) {
			FUNC4("%s has a %s %s", TargetName, known_mbr[i].str, mbr_name);
			return TRUE;
		}
	}

	FUNC4("%s has an unknown %s", TargetName, mbr_name);
	return TRUE;
}