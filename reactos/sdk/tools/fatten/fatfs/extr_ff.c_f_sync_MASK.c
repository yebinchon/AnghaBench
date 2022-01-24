#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int wflag; int /*<<< orphan*/  drv; } ;
struct TYPE_7__ {int flag; TYPE_3__* fs; int /*<<< orphan*/  sclust; int /*<<< orphan*/  fsize; int /*<<< orphan*/ * dir_ptr; int /*<<< orphan*/  dir_sect; int /*<<< orphan*/  dsect; int /*<<< orphan*/  buf; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FIL ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  AM_ARC ; 
 size_t DIR_Attr ; 
 int DIR_FileSize ; 
 int DIR_LstAccDate ; 
 int DIR_WrtTime ; 
 int FA__DIRTY ; 
 int FA__WRITTEN ; 
 scalar_t__ FR_DISK_ERR ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ RES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

FRESULT FUNC9 (
	FIL* fp		/* Pointer to the file object */
)
{
	FRESULT res;
	DWORD tm;
	BYTE *dir;


	res = FUNC8(fp);					/* Check validity of the object */
	if (res == FR_OK) {
		if (fp->flag & FA__WRITTEN) {	/* Is there any change to the file? */
#if !_FS_TINY
			if (fp->flag & FA__DIRTY) {	/* Write-back cached data if needed */
				if (FUNC4(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
					FUNC1(fp->fs, FR_DISK_ERR);
				fp->flag &= ~FA__DIRTY;
			}
#endif
			/* Update the directory entry */
			res = FUNC5(fp->fs, fp->dir_sect);
			if (res == FR_OK) {
				dir = fp->dir_ptr;
				dir[DIR_Attr] |= AM_ARC;					/* Set archive bit */
				FUNC2(dir + DIR_FileSize, fp->fsize);	/* Update file size */
				FUNC6(dir, fp->sclust);					/* Update start cluster */
				tm = FUNC0();							/* Update modified time */
				FUNC2(dir + DIR_WrtTime, tm);
				FUNC3(dir + DIR_LstAccDate, 0);
				fp->flag &= ~FA__WRITTEN;
				fp->fs->wflag = 1;
				res = FUNC7(fp->fs);
			}
		}
	}

	FUNC1(fp->fs, res);
}