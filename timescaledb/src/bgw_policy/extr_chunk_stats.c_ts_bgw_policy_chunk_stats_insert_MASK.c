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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Catalog ;
typedef  int /*<<< orphan*/  BgwPolicyChunkStats ;

/* Variables and functions */
 int /*<<< orphan*/  BGW_POLICY_CHUNK_STATS ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

void
FUNC5(BgwPolicyChunkStats *chunk_stats)
{
	Catalog *catalog = FUNC4();
	Relation rel =
		FUNC2(FUNC0(catalog, BGW_POLICY_CHUNK_STATS), RowExclusiveLock);

	FUNC3(rel, chunk_stats);
	FUNC1(rel, RowExclusiveLock);
}