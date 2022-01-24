#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* win; scalar_t__ fs_type; int dirbase; char csize; int wflag; scalar_t__ winsect; } ;
struct TYPE_13__ {int* fn; int sclust; char* dir; TYPE_2__* fs; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ FRESULT ;
typedef  int DWORD ;
typedef  TYPE_1__ DIR ;
typedef  char BYTE ;

/* Variables and functions */
 char AM_DIR ; 
 int /*<<< orphan*/  DEFINE_NAMEBUF ; 
 size_t DIR_Attr ; 
 int DIR_CrtTime ; 
 int DIR_Name ; 
 int DIR_WrtTime ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FR_DENIED ; 
 scalar_t__ FR_DISK_ERR ; 
 scalar_t__ FR_EXIST ; 
 scalar_t__ FR_INT_ERR ; 
 scalar_t__ FR_INVALID_NAME ; 
 scalar_t__ FR_NO_FILE ; 
 scalar_t__ FR_OK ; 
 scalar_t__ FS_FAT32 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 size_t NSFLAG ; 
 int NS_DOT ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int SZ_DIRE ; 
 scalar_t__ _FS_RPATH ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_2__**,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 

FRESULT FUNC17 (
	const TCHAR* path		/* Pointer to the directory path */
)
{
	FRESULT res;
	DIR dj;
	BYTE *dir, n;
	DWORD dsc, dcl, pcl, tm = FUNC1();
	DEFINE_NAMEBUF;


	/* Get logical drive number */
	res = FUNC9(&dj.fs, &path, 1);
	if (res == FR_OK) {
		FUNC2(dj);
		res = FUNC10(&dj, path);			/* Follow the file path */
		if (res == FR_OK) res = FR_EXIST;		/* Any object with same name is already existing */
		if (_FS_RPATH && res == FR_NO_FILE && (dj.fn[NSFLAG] & NS_DOT))
			res = FR_INVALID_NAME;
		if (res == FR_NO_FILE) {				/* Can create a new directory */
			dcl = FUNC7(dj.fs, 0);		/* Allocate a cluster for the new directory table */
			res = FR_OK;
			if (dcl == 0) res = FR_DENIED;		/* No space to allocate a new cluster */
			if (dcl == 1) res = FR_INT_ERR;
			if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;
			if (res == FR_OK)					/* Flush FAT */
				res = FUNC16(dj.fs);
			if (res == FR_OK) {					/* Initialize the new directory table */
				dsc = FUNC6(dj.fs, dcl);
				dir = dj.fs->win;
				FUNC12(dir, 0, FUNC4(dj.fs));
				FUNC12(dir + DIR_Name, ' ', 11);	/* Create "." entry */
				dir[DIR_Name] = '.';
				dir[DIR_Attr] = AM_DIR;
				FUNC5(dir + DIR_CrtTime, tm);
				FUNC5(dir + DIR_WrtTime, tm);
				FUNC14(dir, dcl);
				FUNC11(dir + SZ_DIRE, dir, SZ_DIRE); 	/* Create ".." entry */
				dir[SZ_DIRE + 1] = '.'; pcl = dj.sclust;
				if (dj.fs->fs_type == FS_FAT32 && pcl == dj.fs->dirbase)
					pcl = 0;
				FUNC14(dir + SZ_DIRE, pcl);
				for (n = dj.fs->csize; n; n--) {	/* Write dot entries and clear following sectors */
					dj.fs->winsect = dsc++;
					dj.fs->wflag = 1;
					res = FUNC16(dj.fs);
					if (res != FR_OK) break;
					FUNC12(dir, 0, FUNC4(dj.fs));
				}
			}
			if (res == FR_OK) res = FUNC8(&dj);	/* Register the object to the directoy */
			if (res != FR_OK) {
				FUNC13(dj.fs, dcl);			/* Could not register, remove cluster chain */
			} else {
				dir = dj.dir;
				dir[DIR_Attr] = AM_DIR;				/* Attribute */
				FUNC5(dir + DIR_CrtTime, tm);	/* Created time */
				FUNC5(dir + DIR_WrtTime, tm);	/* Modified time */
				FUNC14(dir, dcl);					/* Table start cluster */
				dj.fs->wflag = 1;
				res = FUNC15(dj.fs);
			}
		}
		FUNC0();
	}

	FUNC3(dj.fs, res);
}