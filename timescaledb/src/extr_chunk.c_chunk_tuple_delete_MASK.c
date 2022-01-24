#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; int /*<<< orphan*/  mctx; } ;
typedef  TYPE_2__ TupleInfo ;
struct TYPE_11__ {int /*<<< orphan*/  dimension_slice_id; } ;
struct TYPE_15__ {TYPE_1__ fd; } ;
struct TYPE_14__ {int num_constraints; TYPE_5__* constraints; } ;
struct TYPE_13__ {scalar_t__ compressed_chunk_id; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  TYPE_3__ FormData_chunk ;
typedef  int /*<<< orphan*/  DropBehavior ;
typedef  TYPE_4__ ChunkConstraints ;
typedef  TYPE_5__ ChunkConstraint ;
typedef  int /*<<< orphan*/  Chunk ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ INVALID_CHUNK_ID ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ScanTupleResult
FUNC15(TupleInfo *ti, void *data)
{
	FormData_chunk form;
	CatalogSecurityContext sec_ctx;
	ChunkConstraints *ccs = FUNC9(2, ti->mctx);
	int i;
	DropBehavior *behavior = data;

	FUNC0(&form, ti->tuple, ti->desc);
	FUNC7(form.id, ccs);
	FUNC12(form.id, true);
	FUNC13(form.id);

	/* Check for dimension slices that are orphaned by the chunk deletion */
	for (i = 0; i < ccs->num_constraints; i++)
	{
		ChunkConstraint *cc = &ccs->constraints[i];

		/*
		 * Delete the dimension slice if there are no remaining constraints
		 * referencing it
		 */
		if (FUNC1(cc) &&
			FUNC8(cc->fd.dimension_slice_id,
														   NULL,
														   CurrentMemoryContext) == 0)
			FUNC14(cc->fd.dimension_slice_id, false);
	}

	/* Delete any row in bgw_policy_chunk-stats corresponding to this chunk */
	FUNC2(form.id);

	if (form.compressed_chunk_id != INVALID_CHUNK_ID)
	{
		Chunk *compressed_chunk = FUNC11(form.compressed_chunk_id, 0, false);
		/* The chunk may have been delete by a CASCADE */
		if (compressed_chunk != NULL)
			FUNC10(compressed_chunk, *behavior, DEBUG1);
	}

	FUNC3(FUNC4(), &sec_ctx);
	FUNC5(ti->scanrel, ti->tuple);
	FUNC6(&sec_ctx);

	return SCAN_CONTINUE;
}