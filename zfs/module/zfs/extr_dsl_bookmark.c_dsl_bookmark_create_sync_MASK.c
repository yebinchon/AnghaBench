#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_3__ {int /*<<< orphan*/  dbca_bmarks; } ;
typedef  TYPE_1__ dsl_bookmark_create_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_BOOKMARKS ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg, dmu_tx_t *tx)
{
	dsl_bookmark_create_arg_t *dbca = arg;

	FUNC0(FUNC6(FUNC1(tx)->dp_spa,
	    SPA_FEATURE_BOOKMARKS));

	for (nvpair_t *pair = FUNC4(dbca->dbca_bmarks, NULL);
	    pair != NULL; pair = FUNC4(dbca->dbca_bmarks, pair)) {
		FUNC2(FUNC5(pair),
		    FUNC3(pair), tx, 0, NULL, NULL, NULL);
	}
}