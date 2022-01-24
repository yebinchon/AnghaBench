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
typedef  int UINT ;
struct TYPE_5__ {int n_fatent; int fs_type; int fatbase; int* win; } ;
typedef  TYPE_1__ FATFS ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FR_OK ; 
#define  FS_FAT12 130 
#define  FS_FAT16 129 
#define  FS_FAT32 128 
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

DWORD FUNC4 (	/* 0xFFFFFFFF:Disk error, 1:Internal error, 2..0x0FFFFFFF:Cluster status */
	FATFS* fs,	/* File system object */
	DWORD clst	/* FAT index number (cluster number) to get the value */
)
{
	UINT wc, bc;
	BYTE *p;
	DWORD val;


	if (clst < 2 || clst >= fs->n_fatent) {	/* Check if in valid range */
		val = 1;	/* Internal error */

	} else {
		val = 0xFFFFFFFF;	/* Default value falls on disk error */

		switch (fs->fs_type) {
		case FS_FAT12 :
			bc = (UINT)clst; bc += bc / 2;
			if (FUNC3(fs, fs->fatbase + (bc / FUNC2(fs))) != FR_OK) break;
			wc = fs->win[bc++ % FUNC2(fs)];
			if (FUNC3(fs, fs->fatbase + (bc / FUNC2(fs))) != FR_OK) break;
			wc |= fs->win[bc % FUNC2(fs)] << 8;
			val = clst & 1 ? wc >> 4 : (wc & 0xFFF);
			break;

		case FS_FAT16 :
			if (FUNC3(fs, fs->fatbase + (clst / (FUNC2(fs) / 2))) != FR_OK) break;
			p = &fs->win[clst * 2 % FUNC2(fs)];
			val = FUNC1(p);
			break;

		case FS_FAT32 :
			if (FUNC3(fs, fs->fatbase + (clst / (FUNC2(fs) / 4))) != FR_OK) break;
			p = &fs->win[clst * 4 % FUNC2(fs)];
			val = FUNC0(p) & 0x0FFFFFFF;
			break;

		default:
			val = 1;	/* Internal error */
		}
	}

	return val;
}