#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  ContinuousAggsCacheInvalEntry ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  CONTINUOUS_AGGS_INVALIDATION_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  continuous_aggs_cache_inval_htab ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
	HASH_SEQ_STATUS hash_seq;
	ContinuousAggsCacheInvalEntry *current_entry;
	Catalog *catalog;

	if (FUNC3(continuous_aggs_cache_inval_htab) == 0)
		return;

	catalog = FUNC6();

	/* The invalidation threshold must remain locked until the end of
	 * the transaction to ensure the materializer will see our updates,
	 * so we explicitly lock it here
	 */
	FUNC0(FUNC2(catalog, CONTINUOUS_AGGS_INVALIDATION_THRESHOLD),
					AccessShareLock);

	FUNC4(&hash_seq, continuous_aggs_cache_inval_htab);
	while ((current_entry = FUNC5(&hash_seq)) != NULL)
		FUNC1(current_entry);
}