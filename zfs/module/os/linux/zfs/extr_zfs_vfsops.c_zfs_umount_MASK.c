#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* z_os; int /*<<< orphan*/ * z_arc_prune; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  os_user_ptr_lock; } ;
typedef  TYPE_2__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

int
FUNC9(struct super_block *sb)
{
	zfsvfs_t *zfsvfs = sb->s_fs_info;
	objset_t *os;

	if (zfsvfs->z_arc_prune != NULL)
		FUNC1(zfsvfs->z_arc_prune);
	FUNC0(FUNC7(zfsvfs, B_TRUE) == 0);
	os = zfsvfs->z_os;
	FUNC8(sb);

	/*
	 * z_os will be NULL if there was an error in
	 * attempting to reopen zfsvfs.
	 */
	if (os != NULL) {
		/*
		 * Unset the objset user_ptr.
		 */
		FUNC4(&os->os_user_ptr_lock);
		FUNC3(os, NULL);
		FUNC5(&os->os_user_ptr_lock);

		/*
		 * Finally release the objset
		 */
		FUNC2(os, B_TRUE, zfsvfs);
	}

	FUNC6(zfsvfs);
	return (0);
}