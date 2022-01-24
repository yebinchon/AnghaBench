#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ compressed; } ;
typedef  TYPE_2__ TimescaleDBPrivate ;
struct TYPE_11__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_15__ {TYPE_1__ fd; } ;
struct TYPE_14__ {int /*<<< orphan*/  relid; } ;
struct TYPE_13__ {scalar_t__ reloptkind; int /*<<< orphan*/ * fdw_private; } ;
typedef  TYPE_3__ RelOptInfo ;
typedef  TYPE_4__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_5__ Chunk ;

/* Variables and functions */
 scalar_t__ RELOPT_OTHER_MEMBER_REL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ ts_guc_enable_transparent_decompression ; 

void
FUNC3(PlannerInfo *root, RelOptInfo *rel, Index rti, RangeTblEntry *rte,
						   Hypertable *ht)
{
	if (ts_guc_enable_transparent_decompression && ht != NULL &&
		rel->reloptkind == RELOPT_OTHER_MEMBER_REL && FUNC0(ht) &&
		rel->fdw_private != NULL && ((TimescaleDBPrivate *) rel->fdw_private)->compressed)
	{
		Chunk *chunk = FUNC1(rte->relid, 0, true);

		if (chunk->fd.compressed_chunk_id > 0)
			FUNC2(root, rel, ht, chunk);
	}
}