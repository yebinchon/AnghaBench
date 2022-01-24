#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  cube; } ;
struct TYPE_11__ {int /*<<< orphan*/  chunk; int /*<<< orphan*/  mcxt; } ;
struct TYPE_10__ {int /*<<< orphan*/  chunk_cache; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ Hypertable ;
typedef  TYPE_2__ ChunkStoreEntry ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunk_store_entry_free ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ChunkStoreEntry *
FUNC6(Hypertable *h, Chunk *chunk)
{
	ChunkStoreEntry *cse;
	MemoryContext old_mcxt, chunk_mcxt;

	chunk_mcxt = FUNC0(FUNC5(h->chunk_cache),
									   "chunk cache entry memory context",
									   ALLOCSET_SMALL_SIZES);

	/* Add the chunk to the subspace store */
	old_mcxt = FUNC1(chunk_mcxt);
	cse = FUNC2(sizeof(ChunkStoreEntry));
	cse->mcxt = chunk_mcxt;
	cse->chunk = FUNC3(chunk);
	FUNC4(h->chunk_cache, chunk->cube, cse, chunk_store_entry_free);
	FUNC1(old_mcxt);

	return cse;
}