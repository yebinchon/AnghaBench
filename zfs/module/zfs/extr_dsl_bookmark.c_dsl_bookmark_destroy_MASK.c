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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  dbda_success; int /*<<< orphan*/ * dbda_errors; int /*<<< orphan*/ * dbda_bmarks; } ;
typedef  TYPE_1__ dsl_bookmark_destroy_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int /*<<< orphan*/  dsl_bookmark_destroy_check ; 
 int /*<<< orphan*/  dsl_bookmark_destroy_sync ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(nvlist_t *bmarks, nvlist_t *errors)
{
	int rv;
	dsl_bookmark_destroy_arg_t dbda;
	nvpair_t *pair = FUNC4(bmarks, NULL);
	if (pair == NULL)
		return (0);

	dbda.dbda_bmarks = bmarks;
	dbda.dbda_errors = errors;
	dbda.dbda_success = FUNC1();

	rv = FUNC0(FUNC5(pair), dsl_bookmark_destroy_check,
	    dsl_bookmark_destroy_sync, &dbda, FUNC3(bmarks),
	    ZFS_SPACE_CHECK_RESERVED);
	FUNC2(dbda.dbda_success);
	return (rv);
}