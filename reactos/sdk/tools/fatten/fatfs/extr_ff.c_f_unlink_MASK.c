#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ cdir; } ;
struct TYPE_15__ {int* fn; int* dir; TYPE_2__* fs; scalar_t__ sclust; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ FRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DIR ;
typedef  int BYTE ;

/* Variables and functions */
 int AM_DIR ; 
 int AM_RDO ; 
 int /*<<< orphan*/  DEFINE_NAMEBUF ; 
 size_t DIR_Attr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FR_DENIED ; 
 scalar_t__ FR_INVALID_NAME ; 
 scalar_t__ FR_NO_FILE ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 size_t NSFLAG ; 
 int NS_DOT ; 
 scalar_t__ _FS_RPATH ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__**,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 

FRESULT FUNC13 (
	const TCHAR* path		/* Pointer to the file or directory path */
)
{
	FRESULT res;
	DIR dj, sdj;
	BYTE *dir;
	DWORD dclst = 0;
	DEFINE_NAMEBUF;


	/* Get logical drive number */
	res = FUNC7(&dj.fs, &path, 1);
	if (res == FR_OK) {
		FUNC1(dj);
		res = FUNC8(&dj, path);		/* Follow the file path */
		if (_FS_RPATH && res == FR_OK && (dj.fn[NSFLAG] & NS_DOT))
			res = FR_INVALID_NAME;			/* Cannot remove dot entry */
#if _FS_LOCK
		if (res == FR_OK) res = chk_lock(&dj, 2);	/* Cannot remove open object */
#endif
		if (res == FR_OK) {					/* The object is accessible */
			dir = dj.dir;
			if (!dir) {
				res = FR_INVALID_NAME;		/* Cannot remove the origin directory */
			} else {
				if (dir[DIR_Attr] & AM_RDO)
					res = FR_DENIED;		/* Cannot remove R/O object */
			}
			if (res == FR_OK) {
				dclst = FUNC9(dj.fs, dir);
				if (dclst && (dir[DIR_Attr] & AM_DIR)) {	/* Is it a sub-directory ? */
#if _FS_RPATH
					if (dclst == dj.fs->cdir) {		 		/* Is it the current directory? */
						res = FR_DENIED;
					} else
#endif
					{
						FUNC10(&sdj, &dj, sizeof (DIR));	/* Open the sub-directory */
						sdj.sclust = dclst;
						res = FUNC6(&sdj, 2);
						if (res == FR_OK) {
							res = FUNC4(&sdj, 0);			/* Read an item (excluding dot entries) */
							if (res == FR_OK) res = FR_DENIED;	/* Not empty? (cannot remove) */
							if (res == FR_NO_FILE) res = FR_OK;	/* Empty? (can remove) */
						}
					}
				}
			}
			if (res == FR_OK) {
				res = FUNC5(&dj);		/* Remove the directory entry */
				if (res == FR_OK && dclst)	/* Remove the cluster chain if exist */
					res = FUNC11(dj.fs, dclst);
				if (res == FR_OK) res = FUNC12(dj.fs);
			}
		}
		FUNC0();
	}

	FUNC2(dj.fs, res);
}