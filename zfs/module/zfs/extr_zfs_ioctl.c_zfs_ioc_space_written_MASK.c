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
struct TYPE_3__ {int /*<<< orphan*/  zc_perm_action; int /*<<< orphan*/  zc_objset_type; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int
FUNC8(zfs_cmd_t *zc)
{
	int error;
	dsl_pool_t *dp;
	dsl_dataset_t *new;

	error = FUNC5(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);
	error = FUNC1(dp, zc->zc_name, FTAG, &new);
	if (error != 0) {
		FUNC6(dp, FTAG);
		return (error);
	}
	if (FUNC7(zc->zc_value, '#') != NULL) {
		zfs_bookmark_phys_t bmp;
		error = FUNC0(dp, zc->zc_value,
		    new, &bmp);
		if (error == 0) {
			error = FUNC4(&bmp, new,
			    &zc->zc_cookie,
			    &zc->zc_objset_type, &zc->zc_perm_action);
		}
	} else {
		dsl_dataset_t *old;
		error = FUNC1(dp, zc->zc_value, FTAG, &old);

		if (error == 0) {
			error = FUNC3(old, new,
			    &zc->zc_cookie,
			    &zc->zc_objset_type, &zc->zc_perm_action);
			FUNC2(old, FTAG);
		}
	}
	FUNC2(new, FTAG);
	FUNC6(dp, FTAG);
	return (error);
}