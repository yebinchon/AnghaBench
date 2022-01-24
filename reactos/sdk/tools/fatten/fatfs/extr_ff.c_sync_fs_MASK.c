#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fs_type; int fsi_flag; int free_clust; int last_clust; int /*<<< orphan*/  drv; scalar_t__ winsect; scalar_t__ win; scalar_t__ volbase; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FATFS ;

/* Variables and functions */
 scalar_t__ BS_55AA ; 
 int /*<<< orphan*/  CTRL_SYNC ; 
 scalar_t__ FR_DISK_ERR ; 
 scalar_t__ FR_OK ; 
 scalar_t__ FSI_Free_Count ; 
 scalar_t__ FSI_LeadSig ; 
 scalar_t__ FSI_Nxt_Free ; 
 scalar_t__ FSI_StrucSig ; 
 scalar_t__ FS_FAT32 ; 
 scalar_t__ RES_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static
FRESULT FUNC7 (	/* FR_OK:succeeded, !=0:error */
	FATFS* fs		/* File system object */
)
{
	FRESULT res;


	res = FUNC6(fs);
	if (res == FR_OK) {
		/* Update FSInfo sector if needed */
		if (fs->fs_type == FS_FAT32 && fs->fsi_flag == 1) {
			/* Create FSInfo structure */
			FUNC5(fs->win, 0, FUNC0(fs));
			FUNC2(fs->win + BS_55AA, 0xAA55);
			FUNC1(fs->win + FSI_LeadSig, 0x41615252);
			FUNC1(fs->win + FSI_StrucSig, 0x61417272);
			FUNC1(fs->win + FSI_Free_Count, fs->free_clust);
			FUNC1(fs->win + FSI_Nxt_Free, fs->last_clust);
			/* Write it into the FSInfo sector */
			fs->winsect = fs->volbase + 1;
			FUNC4(fs->drv, fs->win, fs->winsect, 1);
			fs->fsi_flag = 0;
		}
		/* Make sure that no pending write process in the physical drive */
		if (FUNC3(fs->drv, CTRL_SYNC, 0) != RES_OK)
			res = FR_DISK_ERR;
	}

	return res;
}