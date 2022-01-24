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
struct TYPE_7__ {scalar_t__ lockmode; int /*<<< orphan*/  data; int /*<<< orphan*/  space; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ChunkResult
FUNC4(ChunkScanCtx *scanctx, Chunk *chunk)
{
	if (!FUNC2(chunk, scanctx->space))
		return CHUNK_IGNORED;

	/* Fill in the rest of the chunk's data from the chunk table */
	FUNC1(chunk, false);

	if (scanctx->lockmode != NoLock)
		FUNC0(chunk->table_id, scanctx->lockmode);

	scanctx->data = FUNC3(scanctx->data, chunk->table_id);

	return CHUNK_PROCESSED;
}