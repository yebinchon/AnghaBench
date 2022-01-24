#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  table_id; } ;
struct TYPE_8__ {scalar_t__ lockmode; int num_complete_chunks; TYPE_2__** data; int /*<<< orphan*/  space; } ;
typedef  TYPE_1__ ChunkScanCtx ;
typedef  int /*<<< orphan*/  ChunkResult ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_IGNORED ; 
 int /*<<< orphan*/  CHUNK_PROCESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ NoLock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC3 (int) ; 

__attribute__((used)) static ChunkResult
FUNC4(ChunkScanCtx *scanctx, Chunk *chunk)
{
	Chunk **chunks = scanctx->data;

	if (!FUNC2(chunk, scanctx->space))
		return CHUNK_IGNORED;

	/* Fill in the rest of the chunk's data from the chunk table */
	FUNC1(chunk, false);

	if (scanctx->lockmode != NoLock)
		FUNC0(chunk->table_id, scanctx->lockmode);

	if (NULL == chunks && scanctx->num_complete_chunks > 0)
		scanctx->data = chunks = FUNC3(sizeof(Chunk *) * scanctx->num_complete_chunks);

	if (scanctx->num_complete_chunks > 0)
		chunks[--scanctx->num_complete_chunks] = chunk;

	return CHUNK_PROCESSED;
}