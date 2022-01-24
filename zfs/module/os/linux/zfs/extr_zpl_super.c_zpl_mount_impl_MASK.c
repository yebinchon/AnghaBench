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
struct TYPE_4__ {int /*<<< orphan*/  mnt_osname; } ;
typedef  TYPE_1__ zfs_mnt_t ;
struct super_block {int s_flags; int /*<<< orphan*/ * s_root; } ;
struct file_system_type {int dummy; } ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int EBUSY ; 
 struct super_block* FUNC0 (struct super_block*) ; 
 struct super_block* FUNC1 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int SB_ACTIVE ; 
 int SB_RDONLY ; 
 int SB_SILENT ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_anon_super ; 
 struct super_block* FUNC9 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct super_block*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  zpl_test_super ; 

__attribute__((used)) static struct super_block *
FUNC11(struct file_system_type *fs_type, int flags, zfs_mnt_t *zm)
{
	struct super_block *s;
	objset_t *os;
	int err;

	err = FUNC5(zm->mnt_osname, FTAG, &os);
	if (err)
		return (FUNC1(-err));

	/*
	 * The dsl pool lock must be released prior to calling sget().
	 * It is possible sget() may block on the lock in grab_super()
	 * while deactivate_super() holds that same lock and waits for
	 * a txg sync.  If the dsl_pool lock is held over sget()
	 * this can prevent the pool sync and cause a deadlock.
	 */
	FUNC8(FUNC6(os), FTAG);
	s = FUNC9(fs_type, zpl_test_super, set_anon_super, flags, os);
	FUNC7(FUNC4(os), FTAG);

	if (FUNC2(s))
		return (FUNC0(s));

	if (s->s_root == NULL) {
		err = FUNC10(s, zm, flags & SB_SILENT ? 1 : 0);
		if (err) {
			FUNC3(s);
			return (FUNC1(err));
		}
		s->s_flags |= SB_ACTIVE;
	} else if ((flags ^ s->s_flags) & SB_RDONLY) {
		FUNC3(s);
		return (FUNC1(-EBUSY));
	}

	return (s);
}