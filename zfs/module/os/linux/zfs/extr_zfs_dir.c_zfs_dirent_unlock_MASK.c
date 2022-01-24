#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  z_lock; TYPE_2__* z_dirlocks; int /*<<< orphan*/  z_name_lock; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_6__ {int dl_sharecnt; scalar_t__ dl_namesize; int /*<<< orphan*/  dl_cv; struct TYPE_6__* dl_name; struct TYPE_6__* dl_next; int /*<<< orphan*/  dl_namelock; TYPE_1__* dl_dzp; } ;
typedef  TYPE_2__ zfs_dirlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(zfs_dirlock_t *dl)
{
	znode_t *dzp = dl->dl_dzp;
	zfs_dirlock_t **prev_dl, *cur_dl;

	FUNC3(&dzp->z_lock);

	if (!dl->dl_namelock)
		FUNC5(&dzp->z_name_lock);

	if (dl->dl_sharecnt > 1) {
		dl->dl_sharecnt--;
		FUNC4(&dzp->z_lock);
		return;
	}
	prev_dl = &dzp->z_dirlocks;
	while ((cur_dl = *prev_dl) != dl)
		prev_dl = &cur_dl->dl_next;
	*prev_dl = dl->dl_next;
	FUNC0(&dl->dl_cv);
	FUNC4(&dzp->z_lock);

	if (dl->dl_namesize != 0)
		FUNC2(dl->dl_name, dl->dl_namesize);
	FUNC1(&dl->dl_cv);
	FUNC2(dl, sizeof (*dl));
}