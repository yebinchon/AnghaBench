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
struct TYPE_5__ {int /*<<< orphan*/  fs; scalar_t__ dir; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ FRESULT ;
typedef  int /*<<< orphan*/  FILINFO ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  DEFINE_NAMEBUF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FR_INVALID_NAME ; 
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

FRESULT FUNC6 (
	const TCHAR* path,	/* Pointer to the file path */
	FILINFO* fno		/* Pointer to file information to return */
)
{
	FRESULT res;
	DIR dj;
	DEFINE_NAMEBUF;


	/* Get logical drive number */
	res = FUNC3(&dj.fs, &path, 0);
	if (res == FR_OK) {
		FUNC1(dj);
		res = FUNC4(&dj, path);	/* Follow the file path */
		if (res == FR_OK) {				/* Follow completed */
			if (dj.dir) {		/* Found an object */
				if (fno) FUNC5(&dj, fno);
			} else {			/* It is root directory */
				res = FR_INVALID_NAME;
			}
		}
		FUNC0();
	}

	FUNC2(dj.fs, res);
}