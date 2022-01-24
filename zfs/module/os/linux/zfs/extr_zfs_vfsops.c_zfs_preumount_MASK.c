#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(struct super_block *sb)
{
	zfsvfs_t *zfsvfs = sb->s_fs_info;

	/* zfsvfs is NULL when zfs_domount fails during mount */
	if (zfsvfs) {
		FUNC3(zfsvfs);
		FUNC4(sb->s_fs_info);
		/*
		 * Wait for iput_async before entering evict_inodes in
		 * generic_shutdown_super. The reason we must finish before
		 * evict_inodes is when lazytime is on, or when zfs_purgedir
		 * calls zfs_zget, iput would bump i_count from 0 to 1. This
		 * would race with the i_count check in evict_inodes. This means
		 * it could destroy the inode while we are still using it.
		 *
		 * We wait for two passes. xattr directories in the first pass
		 * may add xattr entries in zfs_purgedir, so in the second pass
		 * we wait for them. We don't use taskq_wait here because it is
		 * a pool wide taskq. Other mounted filesystems can constantly
		 * do iput_async and there's no guarantee when taskq will be
		 * empty.
		 */
		FUNC2(FUNC1(
		    FUNC0(zfsvfs->z_os)), 0);
		FUNC2(FUNC1(
		    FUNC0(zfsvfs->z_os)), 0);
	}
}