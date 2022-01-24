#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {scalar_t__ ub_checkpoint_txg; } ;
typedef  TYPE_1__ uberblock_t ;
struct TYPE_10__ {int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_ZPOOL_CHECKPOINT ; 
 int ENOENT ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa)
{
	uberblock_t checkpoint;
	int error;

	if (!FUNC3(spa, SPA_FEATURE_POOL_CHECKPOINT))
		return (0);

	error = FUNC5(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_ZPOOL_CHECKPOINT, sizeof (uint64_t),
	    sizeof (uberblock_t) / sizeof (uint64_t), &checkpoint);

	if (error == ENOENT && !dump_opt['L']) {
		/*
		 * If the feature is active but the uberblock is missing
		 * then we must be in the middle of discarding the
		 * checkpoint.
		 */
		(void) FUNC2("\nPartially discarded checkpoint "
		    "state found:\n");
		if (dump_opt['m'] > 3)
			FUNC0(spa);
		return (0);
	} else if (error != 0) {
		(void) FUNC2("lookup error %d when looking for "
		    "checkpointed uberblock in MOS\n", error);
		return (error);
	}
	FUNC1(&checkpoint, "\nCheckpointed uberblock found:\n", "\n");

	if (checkpoint.ub_checkpoint_txg == 0) {
		(void) FUNC2("\nub_checkpoint_txg not set in checkpointed "
		    "uberblock\n");
		error = 3;
	}

	if (error == 0 && !dump_opt['L'])
		FUNC4(spa);

	return (error);
}