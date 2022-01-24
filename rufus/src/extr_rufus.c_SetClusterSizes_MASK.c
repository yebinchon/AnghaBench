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
typedef  int ULONG ;
struct TYPE_4__ {TYPE_1__* ClusterSize; } ;
struct TYPE_3__ {int Allowed; int Default; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char** ClusterSizeLabel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int FS_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_030 ; 
 TYPE_2__ SelectedDrive ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hClusterSize ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BOOL FUNC6(int FSType)
{
	char* szClustSize;
	int i, k, default_index = 0;
	ULONG j;

	FUNC4(FUNC1(hClusterSize));

	if ((FSType < 0) || (FSType >= FS_MAX)) {
		return FALSE;
	}

	if ((SelectedDrive.ClusterSize[FSType].Allowed == 0)
		|| (SelectedDrive.ClusterSize[FSType].Default == 0)) {
		return FALSE;
	}

	for (i = 0, j = 0x100, k = 0; j<0x10000000; i++, j <<= 1) {
		if (j & SelectedDrive.ClusterSize[FSType].Allowed) {
			if (j == SelectedDrive.ClusterSize[FSType].Default) {
				szClustSize = FUNC5(MSG_030, ClusterSizeLabel[i]);
				default_index = k;
			} else {
				szClustSize = ClusterSizeLabel[i];
			}
			FUNC4(FUNC3(hClusterSize, FUNC0(hClusterSize, szClustSize), j));
			k++;
		}
	}

	FUNC4(FUNC2(hClusterSize, default_index));
	return TRUE;
}