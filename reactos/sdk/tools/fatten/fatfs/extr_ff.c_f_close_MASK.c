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
struct TYPE_5__ {int /*<<< orphan*/ * fs; int /*<<< orphan*/  lockid; } ;
typedef  scalar_t__ FRESULT ;
typedef  TYPE_1__ FIL ;
typedef  int /*<<< orphan*/  FATFS ;

/* Variables and functions */
 scalar_t__ FR_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

FRESULT FUNC4 (
	FIL *fp		/* Pointer to the file object to be closed */
)
{
	FRESULT res;


#if !_FS_READONLY
	res = FUNC1(fp);					/* Flush cached data */
	if (res == FR_OK)
#endif
	{
		res = FUNC3(fp);				/* Lock volume */
		if (res == FR_OK) {
#if _FS_REENTRANT
			FATFS *fs = fp->fs;
#endif
#if _FS_LOCK
			res = dec_lock(fp->lockid);	/* Decrement file open counter */
			if (res == FR_OK)
#endif
				fp->fs = 0;				/* Invalidate file object */
#if _FS_REENTRANT
			unlock_fs(fs, FR_OK);		/* Unlock volume */
#endif
		}
	}
	return res;
}