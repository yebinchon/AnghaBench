#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_13__ {int csize; scalar_t__ winsect; int const* win; int wflag; int /*<<< orphan*/  drv; } ;
struct TYPE_12__ {int flag; int fptr; int sclust; int clust; scalar_t__ dsect; int const* buf; int fsize; TYPE_3__* fs; scalar_t__ cltbl; scalar_t__ err; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FIL ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FA_WRITE ; 
 int FA__DIRTY ; 
 int FA__WRITTEN ; 
 scalar_t__ FR_DENIED ; 
 int /*<<< orphan*/  FR_DISK_ERR ; 
 int /*<<< orphan*/  FR_INT_ERR ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ RES_OK ; 
 size_t FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int const*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int const*,int const*,int) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 

FRESULT FUNC12 (
	FIL* fp,			/* Pointer to the file object */
	const void *buff,	/* Pointer to the data to be written */
	UINT btw,			/* Number of bytes to write */
	UINT* bw			/* Pointer to number of bytes written */
)
{
	FRESULT res;
	DWORD clst, sect;
	UINT wcnt, cc;
	const BYTE *wbuff = (const BYTE*)buff;
	BYTE csect;


	*bw = 0;	/* Clear write byte counter */

	res = FUNC11(fp);						/* Check validity */
	if (res != FR_OK) FUNC1(fp->fs, res);
	if (fp->err)							/* Check error */
		FUNC1(fp->fs, (FRESULT)fp->err);
	if (!(fp->flag & FA_WRITE))				/* Check access mode */
		FUNC1(fp->fs, FR_DENIED);
	if (fp->fptr + btw < fp->fptr) btw = 0;	/* File size cannot reach 4GB */

	for ( ;  btw;							/* Repeat until all data written */
		wbuff += wcnt, fp->fptr += wcnt, *bw += wcnt, btw -= wcnt) {
		if ((fp->fptr % FUNC2(fp->fs)) == 0) {	/* On the sector boundary? */
			csect = (BYTE)(fp->fptr / FUNC2(fp->fs) & (fp->fs->csize - 1));	/* Sector offset in the cluster */
			if (!csect) {					/* On the cluster boundary? */
				if (fp->fptr == 0) {		/* On the top of the file? */
					clst = fp->sclust;		/* Follow from the origin */
					if (clst == 0)			/* When no cluster is allocated, */
						clst = FUNC5(fp->fs, 0);	/* Create a new cluster chain */
				} else {					/* Middle or end of the file */
#if _USE_FASTSEEK
					if (fp->cltbl)
						clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
					else
#endif
						clst = FUNC5(fp->fs, fp->clust);	/* Follow or stretch cluster chain on the FAT */
				}
				if (clst == 0) break;		/* Could not allocate a new cluster (disk full) */
				if (clst == 1) FUNC0(fp->fs, FR_INT_ERR);
				if (clst == 0xFFFFFFFF) FUNC0(fp->fs, FR_DISK_ERR);
				fp->clust = clst;			/* Update current cluster */
				if (fp->sclust == 0) fp->sclust = clst;	/* Set start cluster if the first write */
			}
#if _FS_TINY
			if (fp->fs->winsect == fp->dsect && sync_window(fp->fs))	/* Write-back sector cache */
				ABORT(fp->fs, FR_DISK_ERR);
#else
			if (fp->flag & FA__DIRTY) {		/* Write-back sector cache */
				if (FUNC7(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
					FUNC0(fp->fs, FR_DISK_ERR);
				fp->flag &= ~FA__DIRTY;
			}
#endif
			sect = FUNC4(fp->fs, fp->clust);	/* Get current sector */
			if (!sect) FUNC0(fp->fs, FR_INT_ERR);
			sect += csect;
			cc = btw / FUNC2(fp->fs);			/* When remaining bytes >= sector size, */
			if (cc) {						/* Write maximum contiguous sectors directly */
				if (csect + cc > fp->fs->csize)	/* Clip at cluster boundary */
					cc = fp->fs->csize - csect;
				if (FUNC7(fp->fs->drv, wbuff, sect, cc) != RES_OK)
					FUNC0(fp->fs, FR_DISK_ERR);
#if _FS_MINIMIZE <= 2
#if _FS_TINY
				if (fp->fs->winsect - sect < cc) {	/* Refill sector cache if it gets invalidated by the direct write */
					mem_cpy(fp->fs->win, wbuff + ((fp->fs->winsect - sect) * SS(fp->fs)), SS(fp->fs));
					fp->fs->wflag = 0;
				}
#else
				if (fp->dsect - sect < cc) { /* Refill sector cache if it gets invalidated by the direct write */
					FUNC8(fp->buf, wbuff + ((fp->dsect - sect) * FUNC2(fp->fs)), FUNC2(fp->fs));
					fp->flag &= ~FA__DIRTY;
				}
#endif
#endif
				wcnt = FUNC2(fp->fs) * cc;		/* Number of bytes transferred */
				continue;
			}
#if _FS_TINY
			if (fp->fptr >= fp->fsize) {	/* Avoid silly cache filling at growing edge */
				if (sync_window(fp->fs)) ABORT(fp->fs, FR_DISK_ERR);
				fp->fs->winsect = sect;
			}
#else
			if (fp->dsect != sect) {		/* Fill sector cache with file data */
				if (fp->fptr < fp->fsize &&
					FUNC6(fp->fs->drv, fp->buf, sect, 1) != RES_OK)
						FUNC0(fp->fs, FR_DISK_ERR);
			}
#endif
			fp->dsect = sect;
		}
		wcnt = FUNC2(fp->fs) - ((UINT)fp->fptr % FUNC2(fp->fs));/* Put partial sector into file I/O buffer */
		if (wcnt > btw) wcnt = btw;
#if _FS_TINY
		if (move_window(fp->fs, fp->dsect) != FR_OK)	/* Move sector window */
			ABORT(fp->fs, FR_DISK_ERR);
		mem_cpy(&fp->fs->win[fp->fptr % SS(fp->fs)], wbuff, wcnt);	/* Fit partial sector */
		fp->fs->wflag = 1;
#else
		FUNC8(&fp->buf[fp->fptr % FUNC2(fp->fs)], wbuff, wcnt);	/* Fit partial sector */
		fp->flag |= FA__DIRTY;
#endif
	}

	if (fp->fptr > fp->fsize) fp->fsize = fp->fptr;	/* Update file size if needed */
	fp->flag |= FA__WRITTEN;						/* Set file change flag */

	FUNC1(fp->fs, FR_OK);
}