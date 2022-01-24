#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int /*<<< orphan*/ * partitioning; } ;
struct TYPE_7__ {int /*<<< orphan*/  greatest_modified_value; int /*<<< orphan*/  lowest_modified_value; int /*<<< orphan*/  previous_chunk_relid; TYPE_4__ hypertable_open_dimension; int /*<<< orphan*/  hypertable_relid; } ;
struct TYPE_6__ {int /*<<< orphan*/  space; int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  PartitioningInfo ;
typedef  TYPE_1__ Hypertable ;
typedef  TYPE_2__ ContinuousAggsCacheInvalEntry ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PG_INT64_MAX ; 
 int /*<<< orphan*/  PG_INT64_MIN ; 
 int /*<<< orphan*/  continuous_aggs_trigger_mctx ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static inline void
FUNC5(ContinuousAggsCacheInvalEntry *cache_entry, int32 hypertable_id)
{
	Cache *ht_cache = FUNC4();
	/* NOTE: we can remove the id=>relid scan, if it becomes an issue, by getting the
	 * hypertable_relid directly from the Chunk*/
	Hypertable *ht = FUNC3(ht_cache, hypertable_id);
	cache_entry->hypertable_relid = ht->main_table_relid;
	cache_entry->hypertable_open_dimension = *FUNC1(ht->space, 0);
	if (cache_entry->hypertable_open_dimension.partitioning != NULL)
	{
		PartitioningInfo *open_dim_part_info =
			FUNC0(continuous_aggs_trigger_mctx, sizeof(*open_dim_part_info));
		*open_dim_part_info = *cache_entry->hypertable_open_dimension.partitioning;
		cache_entry->hypertable_open_dimension.partitioning = open_dim_part_info;
	}
	cache_entry->previous_chunk_relid = InvalidOid;
	cache_entry->lowest_modified_value = PG_INT64_MAX;
	cache_entry->greatest_modified_value = PG_INT64_MIN;
	FUNC2(ht_cache);
}