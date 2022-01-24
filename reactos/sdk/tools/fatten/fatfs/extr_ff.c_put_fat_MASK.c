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
typedef  int /*<<< orphan*/  WORD ;
typedef  int UINT ;
struct TYPE_5__ {int n_fatent; int fs_type; int fatbase; int* win; int wflag; } ;
typedef  int /*<<< orphan*/  FRESULT ;
typedef  TYPE_1__ FATFS ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FR_INT_ERR ; 
 int /*<<< orphan*/  FR_OK ; 
#define  FS_FAT12 130 
#define  FS_FAT16 129 
#define  FS_FAT32 128 
 int FUNC0 (int*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

FRESULT FUNC5 (	/* FR_OK(0):succeeded, !=0:error */
	FATFS* fs,		/* File system object */
	DWORD clst,		/* FAT index number (cluster number) to be changed */
	DWORD val		/* New value to be set to the entry */
)
{
	UINT bc;
	BYTE *p;
	FRESULT res;


	if (clst < 2 || clst >= fs->n_fatent) {	/* Check if in valid range */
		res = FR_INT_ERR;

	} else {
		switch (fs->fs_type) {
		case FS_FAT12 :
			bc = (UINT)clst; bc += bc / 2;
			res = FUNC4(fs, fs->fatbase + (bc / FUNC1(fs)));
			if (res != FR_OK) break;
			p = &fs->win[bc++ % FUNC1(fs)];
			*p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
			fs->wflag = 1;
			res = FUNC4(fs, fs->fatbase + (bc / FUNC1(fs)));
			if (res != FR_OK) break;
			p = &fs->win[bc % FUNC1(fs)];
			*p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
			fs->wflag = 1;
			break;

		case FS_FAT16 :
			res = FUNC4(fs, fs->fatbase + (clst / (FUNC1(fs) / 2)));
			if (res != FR_OK) break;
			p = &fs->win[clst * 2 % FUNC1(fs)];
			FUNC3(p, (WORD)val);
			fs->wflag = 1;
			break;

		case FS_FAT32 :
			res = FUNC4(fs, fs->fatbase + (clst / (FUNC1(fs) / 4)));
			if (res != FR_OK) break;
			p = &fs->win[clst * 4 % FUNC1(fs)];
			val |= FUNC0(p) & 0xF0000000;
			FUNC2(p, val);
			fs->wflag = 1;
			break;

		default :
			res = FR_INT_ERR;
		}
	}

	return res;
}