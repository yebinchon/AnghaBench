#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zc_perm_action; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src_size; int /*<<< orphan*/  zc_nvlist_src; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(zfs_cmd_t *zc)
{
	int error;
	nvlist_t *fsaclnv = NULL;

	if ((error = FUNC5(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &fsaclnv)) != 0)
		return (error);

	/*
	 * Verify nvlist is constructed correctly
	 */
	if ((error = FUNC8(fsaclnv)) != 0) {
		FUNC6(fsaclnv);
		return (FUNC1(EINVAL));
	}

	/*
	 * If we don't have PRIV_SYS_MOUNT, then validate
	 * that user is allowed to hand out each permission in
	 * the nvlist(s)
	 */

	error = FUNC7(FUNC0());
	if (error != 0) {
		if (zc->zc_perm_action == B_FALSE) {
			error = FUNC2(zc->zc_name,
			    fsaclnv, FUNC0());
		} else {
			error = FUNC3(zc->zc_name,
			    fsaclnv, FUNC0());
		}
	}

	if (error == 0)
		error = FUNC4(zc->zc_name, fsaclnv, zc->zc_perm_action);

	FUNC6(fsaclnv);
	return (error);
}