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
typedef  int uint16 ;
typedef  int (* on_chunk_func ) (TYPE_1__*,int /*<<< orphan*/ ) ;
struct TYPE_8__ {int /*<<< orphan*/  chunk; } ;
struct TYPE_7__ {int /*<<< orphan*/  htab; } ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  TYPE_2__ ChunkScanEntry ;
typedef  TYPE_1__ ChunkScanCtx ;

/* Variables and functions */
#define  CHUNK_DONE 130 
#define  CHUNK_IGNORED 129 
#define  CHUNK_PROCESSED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(ChunkScanCtx *ctx, on_chunk_func on_chunk, uint16 limit)
{
	HASH_SEQ_STATUS status;
	ChunkScanEntry *entry;
	uint16 num_processed = 0;

	FUNC0(&status, ctx->htab);

	for (entry = FUNC1(&status); entry != NULL; entry = FUNC1(&status))
	{
		switch (on_chunk(ctx, entry->chunk))
		{
			case CHUNK_DONE:
				num_processed++;
				FUNC2(&status);
				return num_processed;
			case CHUNK_PROCESSED:
				num_processed++;

				if (limit > 0 && num_processed == limit)
				{
					FUNC2(&status);
					return num_processed;
				}
				break;
			case CHUNK_IGNORED:
				break;
		}
	}

	return num_processed;
}