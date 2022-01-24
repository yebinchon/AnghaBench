#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  table_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  column_name; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_12__ {scalar_t__ previous_chunk_open_dimension; TYPE_2__ hypertable_open_dimension; int /*<<< orphan*/  previous_chunk_relid; } ;
struct TYPE_11__ {int /*<<< orphan*/  rd_id; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ ContinuousAggsCacheInvalEntry ;
typedef  TYPE_5__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC4(ContinuousAggsCacheInvalEntry *cache_entry, Oid chunk_id,
							Relation chunk_relation)
{
	Chunk *modified_tuple_chunk = FUNC3(chunk_id, 0, false);
	if (modified_tuple_chunk == NULL)
		FUNC1(ERROR, "continuous agg trigger function must be called on hypertable chunks only");

	cache_entry->previous_chunk_relid = modified_tuple_chunk->table_id;
	cache_entry->previous_chunk_open_dimension =
		FUNC2(chunk_relation->rd_id,
				   FUNC0(cache_entry->hypertable_open_dimension.fd.column_name));

	if (cache_entry->previous_chunk_open_dimension == InvalidAttrNumber)
		FUNC1(ERROR, "continuous agg trigger function must be called on hypertable chunks only");
}