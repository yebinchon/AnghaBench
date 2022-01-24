#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int wflag; } ;
struct TYPE_7__ {int* fn; int* dir; TYPE_2__* fs; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ DIR ;
typedef  int BYTE ;

/* Variables and functions */
 int AM_ARC ; 
 int AM_HID ; 
 int AM_RDO ; 
 int AM_SYS ; 
 int /*<<< orphan*/  DEFINE_NAMEBUF ; 
 size_t DIR_Attr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FR_INVALID_NAME ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 size_t NSFLAG ; 
 int NS_DOT ; 
 scalar_t__ _FS_RPATH ; 
 scalar_t__ FUNC3 (TYPE_2__**,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

FRESULT FUNC6 (
	const TCHAR* path,	/* Pointer to the file path */
	BYTE attr,			/* Attribute bits */
	BYTE mask			/* Attribute mask to change */
)
{
	FRESULT res;
	DIR dj;
	BYTE *dir;
	DEFINE_NAMEBUF;


	res = FUNC3(&dj.fs, &path, 1);	/* Get logical drive number */
	if (res == FR_OK) {
		FUNC1(dj);
		res = FUNC4(&dj, path);		/* Follow the file path */
		FUNC0();
		if (_FS_RPATH && res == FR_OK && (dj.fn[NSFLAG] & NS_DOT))
			res = FR_INVALID_NAME;
		if (res == FR_OK) {
			dir = dj.dir;
			if (!dir) {						/* Is it a root directory? */
				res = FR_INVALID_NAME;
			} else {						/* File or sub directory */
				mask &= AM_RDO|AM_HID|AM_SYS|AM_ARC;	/* Valid attribute mask */
				dir[DIR_Attr] = (attr & mask) | (dir[DIR_Attr] & (BYTE)~mask);	/* Apply attribute change */
				dj.fs->wflag = 1;
				res = FUNC5(dj.fs);
			}
		}
	}

	FUNC2(dj.fs, res);
}