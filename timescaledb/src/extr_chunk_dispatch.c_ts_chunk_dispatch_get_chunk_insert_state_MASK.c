#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  cube; } ;
struct TYPE_16__ {scalar_t__ prev_cis_oid; TYPE_2__* prev_cis; int /*<<< orphan*/  cache; int /*<<< orphan*/  hypertable; } ;
struct TYPE_15__ {TYPE_1__* rel; } ;
struct TYPE_14__ {scalar_t__ rd_id; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_2__ ChunkInsertState ;
typedef  TYPE_3__ ChunkDispatch ;
typedef  TYPE_4__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  destroy_chunk_insert_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

extern ChunkInsertState *
FUNC7(ChunkDispatch *dispatch, Point *point,
										 bool *cis_changed_out)
{
	ChunkInsertState *cis;

	FUNC0(cis_changed_out != NULL);
	cis = FUNC6(dispatch->cache, point);
	*cis_changed_out = true;

	if (NULL == cis)
	{
		Chunk *new_chunk;

		new_chunk = FUNC4(dispatch->hypertable, point);

		if (NULL == new_chunk)
			FUNC1(ERROR, "no chunk found or created");

		cis = FUNC2(new_chunk, dispatch);
		FUNC5(dispatch->cache, new_chunk->cube, cis, destroy_chunk_insert_state);
	}
	else if (cis->rel->rd_id == dispatch->prev_cis_oid && cis == dispatch->prev_cis)
	{
		/* got the same item from cache as before */
		*cis_changed_out = false;
	}

	if (*cis_changed_out)
		FUNC3(cis);

	FUNC0(cis != NULL);
	dispatch->prev_cis = cis;
	dispatch->prev_cis_oid = cis->rel->rd_id;
	return cis;
}