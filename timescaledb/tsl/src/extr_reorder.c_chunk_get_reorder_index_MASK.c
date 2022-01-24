#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  table_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ Hypertable ;
typedef  int /*<<< orphan*/  ChunkIndexMapping ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(Hypertable *ht, Chunk *chunk, Oid index_relid, ChunkIndexMapping *cim_out)
{
	/*
	 * Index search order: 1. Explicitly named index 2. Chunk cluster index 3.
	 * Hypertable cluster index
	 */
	if (FUNC0(index_relid))
	{
		if (FUNC2(chunk, index_relid, cim_out))
			return true;

		return FUNC1(chunk, index_relid, cim_out);
	}

	index_relid = FUNC3(chunk->table_id);
	if (FUNC0(index_relid))
		return FUNC2(chunk, index_relid, cim_out);

	index_relid = FUNC3(ht->main_table_relid);
	if (FUNC0(index_relid))
		return FUNC1(chunk, index_relid, cim_out);

	return false;
}