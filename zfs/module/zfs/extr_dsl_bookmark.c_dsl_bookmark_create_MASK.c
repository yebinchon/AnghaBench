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
struct TYPE_3__ {int /*<<< orphan*/ * dbca_errors; int /*<<< orphan*/ * dbca_bmarks; } ;
typedef  TYPE_1__ dsl_bookmark_create_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  dsl_bookmark_create_check ; 
 int /*<<< orphan*/  dsl_bookmark_create_sync ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(nvlist_t *bmarks, nvlist_t *errors)
{
	nvpair_t *pair;
	dsl_bookmark_create_arg_t dbca;

	pair = FUNC2(bmarks, NULL);
	if (pair == NULL)
		return (0);

	dbca.dbca_bmarks = bmarks;
	dbca.dbca_errors = errors;

	return (FUNC0(FUNC3(pair), dsl_bookmark_create_check,
	    dsl_bookmark_create_sync, &dbca,
	    FUNC1(bmarks), ZFS_SPACE_CHECK_NORMAL));
}