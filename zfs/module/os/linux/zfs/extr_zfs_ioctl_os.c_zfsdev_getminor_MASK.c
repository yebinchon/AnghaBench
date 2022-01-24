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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int zs_minor; struct TYPE_7__* zs_next; } ;
typedef  TYPE_2__ zfsdev_state_t ;
typedef  int minor_t ;
struct TYPE_8__ {TYPE_1__* f_file; } ;
typedef  TYPE_3__ file_t ;
struct TYPE_6__ {TYPE_2__* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* zfsdev_state_list ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 

int
FUNC6(int fd, minor_t *minorp)
{
	zfsdev_state_t *zs, *fpd;
	file_t *fp;

	FUNC0(!FUNC1(&zfsdev_state_lock));
	fp = FUNC3(fd);

	if (fp == NULL)
		return (FUNC2(EBADF));

	fpd = fp->f_file->private_data;
	if (fpd == NULL)
		return (FUNC2(EBADF));

	FUNC4(&zfsdev_state_lock);

	for (zs = zfsdev_state_list; zs != NULL; zs = zs->zs_next) {

		if (zs->zs_minor == -1)
			continue;

		if (fpd == zs) {
			*minorp = fpd->zs_minor;
			FUNC5(&zfsdev_state_lock);
			return (0);
		}
	}

	FUNC5(&zfsdev_state_lock);

	return (FUNC2(EBADF));
}