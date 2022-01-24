#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int wflag; } ;
struct TYPE_10__ {int* fn; TYPE_3__* fs; int /*<<< orphan*/ * dir; } ;
struct TYPE_9__ {int /*<<< orphan*/  fdate; int /*<<< orphan*/  ftime; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FILINFO ;
typedef  TYPE_2__ DIR ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  DEFINE_NAMEBUF ; 
 int DIR_WrtDate ; 
 int DIR_WrtTime ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FR_INVALID_NAME ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 size_t NSFLAG ; 
 int NS_DOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ _FS_RPATH ; 
 scalar_t__ FUNC4 (TYPE_3__**,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 

FRESULT FUNC7 (
	const TCHAR* path,	/* Pointer to the file/directory name */
	const FILINFO* fno	/* Pointer to the time stamp to be set */
)
{
	FRESULT res;
	DIR dj;
	BYTE *dir;
	DEFINE_NAMEBUF;


	/* Get logical drive number */
	res = FUNC4(&dj.fs, &path, 1);
	if (res == FR_OK) {
		FUNC1(dj);
		res = FUNC5(&dj, path);	/* Follow the file path */
		FUNC0();
		if (_FS_RPATH && res == FR_OK && (dj.fn[NSFLAG] & NS_DOT))
			res = FR_INVALID_NAME;
		if (res == FR_OK) {
			dir = dj.dir;
			if (!dir) {					/* Root directory */
				res = FR_INVALID_NAME;
			} else {					/* File or sub-directory */
				FUNC3(dir + DIR_WrtTime, fno->ftime);
				FUNC3(dir + DIR_WrtDate, fno->fdate);
				dj.fs->wflag = 1;
				res = FUNC6(dj.fs);
			}
		}
	}

	FUNC2(dj.fs, res);
}