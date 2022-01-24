#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* cube; int /*<<< orphan*/  table_id; } ;
struct TYPE_11__ {TYPE_1__* space; } ;
struct TYPE_10__ {int /*<<< orphan*/ ** slices; } ;
struct TYPE_9__ {scalar_t__ num_dimensions; int /*<<< orphan*/ * dimensions; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HypertableRestrictInfo ;
typedef  TYPE_3__ Hypertable ;
typedef  int /*<<< orphan*/  DimensionSlice ;
typedef  TYPE_4__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  chunk_cmp ; 
 int /*<<< orphan*/  chunk_cmp_reverse ; 
 TYPE_4__** FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC7(HypertableRestrictInfo *hri, Hypertable *ht,
												   LOCKMODE lockmode, List **nested_oids,
												   bool reverse)
{
	unsigned num_chunks;
	Chunk **chunks = FUNC2(hri, ht, lockmode, &num_chunks);
	List *chunk_oids = NIL;
	List *slot_chunk_oids = NIL;
	DimensionSlice *slice = NULL;
	unsigned int i;

	if (num_chunks == 0)
		return NIL;

	FUNC0(ht->space->num_dimensions > 0);
	FUNC0(FUNC1(&ht->space->dimensions[0]));

	if (reverse)
		FUNC5(chunks, num_chunks, sizeof(Chunk *), chunk_cmp_reverse);
	else
		FUNC5(chunks, num_chunks, sizeof(Chunk *), chunk_cmp);

	for (i = 0; i < num_chunks; i++)
	{
		Chunk *chunk = chunks[i];

		if (NULL != slice && FUNC6(slice, chunk->cube->slices[0]) != 0 &&
			slot_chunk_oids != NIL)
		{
			*nested_oids = FUNC3(*nested_oids, slot_chunk_oids);
			slot_chunk_oids = NIL;
		}

		if (NULL != nested_oids)
			slot_chunk_oids = FUNC4(slot_chunk_oids, chunk->table_id);

		chunk_oids = FUNC4(chunk_oids, chunk->table_id);
		slice = chunk->cube->slices[0];
	}

	if (slot_chunk_oids != NIL)
		*nested_oids = FUNC3(*nested_oids, slot_chunk_oids);

	return chunk_oids;
}