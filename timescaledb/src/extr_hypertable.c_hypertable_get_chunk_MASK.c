#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * chunk; } ;
struct TYPE_9__ {int /*<<< orphan*/  associated_table_prefix; int /*<<< orphan*/  associated_schema_name; } ;
struct TYPE_10__ {TYPE_1__ fd; int /*<<< orphan*/  space; int /*<<< orphan*/  chunk_cache; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_2__ Hypertable ;
typedef  TYPE_3__ ChunkStoreEntry ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline Chunk *
FUNC6(Hypertable *h, Point *point, bool create_if_not_exists)
{
	Chunk *chunk;
	ChunkStoreEntry *cse = FUNC5(h->chunk_cache, point);
	if (cse != NULL)
	{
		FUNC0(NULL != cse->chunk);
		return cse->chunk;
	}

	/*
	 * ts_chunk_find() must execute on a per-tuple memory context since it
	 * allocates a lot of transient data. We don't want this allocated on
	 * the cache's memory context.
	 */
	chunk = FUNC4(h->space, point);

	if (NULL == chunk)
	{
		if (!create_if_not_exists)
			return NULL;

		chunk = FUNC3(h,
								point,
								FUNC1(h->fd.associated_schema_name),
								FUNC1(h->fd.associated_table_prefix));
	}

	FUNC0(chunk != NULL);

	/* Also add the chunk to the hypertable's chunk store */
	cse = FUNC2(h, chunk);
	return chunk;
}