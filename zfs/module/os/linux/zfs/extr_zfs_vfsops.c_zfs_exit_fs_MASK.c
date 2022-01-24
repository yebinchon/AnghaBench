#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* z_os; scalar_t__ z_snap_defer_time; int /*<<< orphan*/  z_issnap; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_5__ {int /*<<< orphan*/  os_spa; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int zfs_expire_snapshot ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

inline void
FUNC4(zfsvfs_t *zfsvfs)
{
	if (!zfsvfs->z_issnap)
		return;

	if (FUNC2(jiffies, zfsvfs->z_snap_defer_time +
	    FUNC0(zfs_expire_snapshot * HZ / 2, HZ))) {
		zfsvfs->z_snap_defer_time = jiffies;
		FUNC3(zfsvfs->z_os->os_spa,
		    FUNC1(zfsvfs->z_os),
		    zfs_expire_snapshot);
	}
}