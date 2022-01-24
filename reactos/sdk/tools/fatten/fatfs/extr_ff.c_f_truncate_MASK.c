#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int n_fatent; int /*<<< orphan*/  drv; } ;
struct TYPE_8__ {int flag; scalar_t__ fsize; scalar_t__ fptr; int sclust; TYPE_3__* fs; scalar_t__ err; int /*<<< orphan*/  dsect; int /*<<< orphan*/  buf; int /*<<< orphan*/  clust; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FIL ;
typedef  int DWORD ;

/* Variables and functions */
 int FA_WRITE ; 
 int FA__DIRTY ; 
 int FA__WRITTEN ; 
 scalar_t__ FR_DENIED ; 
 scalar_t__ FR_DISK_ERR ; 
 scalar_t__ FR_INT_ERR ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ RES_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

FRESULT FUNC6 (
	FIL* fp		/* Pointer to the file object */
)
{
	FRESULT res;
	DWORD ncl;


	res = FUNC5(fp);						/* Check validity of the object */
	if (res == FR_OK) {
		if (fp->err) {						/* Check error */
			res = (FRESULT)fp->err;
		} else {
			if (!(fp->flag & FA_WRITE))		/* Check access mode */
				res = FR_DENIED;
		}
	}
	if (res == FR_OK) {
		if (fp->fsize > fp->fptr) {
			fp->fsize = fp->fptr;	/* Set file size to current R/W point */
			fp->flag |= FA__WRITTEN;
			if (fp->fptr == 0) {	/* When set file size to zero, remove entire cluster chain */
				res = FUNC4(fp->fs, fp->sclust);
				fp->sclust = 0;
			} else {				/* When truncate a part of the file, remove remaining clusters */
				ncl = FUNC2(fp->fs, fp->clust);
				res = FR_OK;
				if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
				if (ncl == 1) res = FR_INT_ERR;
				if (res == FR_OK && ncl < fp->fs->n_fatent) {
					res = FUNC3(fp->fs, fp->clust, 0x0FFFFFFF);
					if (res == FR_OK) res = FUNC4(fp->fs, ncl);
				}
			}
#if !_FS_TINY
			if (res == FR_OK && (fp->flag & FA__DIRTY)) {
				if (FUNC1(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
					res = FR_DISK_ERR;
				else
					fp->flag &= ~FA__DIRTY;
			}
#endif
		}
		if (res != FR_OK) fp->err = (FRESULT)res;
	}

	FUNC0(fp->fs, res);
}