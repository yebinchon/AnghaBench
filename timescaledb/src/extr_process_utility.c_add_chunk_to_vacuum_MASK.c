#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VacuumRelation ;
struct TYPE_15__ {int /*<<< orphan*/  chunk_rels; TYPE_2__* ht_vacuum_rel; } ;
typedef  TYPE_4__ VacuumCtx ;
struct TYPE_12__ {int /*<<< orphan*/  schema_name; int /*<<< orphan*/  table_name; } ;
struct TYPE_18__ {TYPE_1__ fd; } ;
struct TYPE_17__ {TYPE_3__* space; } ;
struct TYPE_16__ {void* schemaname; void* relname; } ;
struct TYPE_14__ {int /*<<< orphan*/  num_dimensions; } ;
struct TYPE_13__ {int /*<<< orphan*/  va_cols; int /*<<< orphan*/  relation; } ;
typedef  TYPE_5__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_6__ Hypertable ;
typedef  TYPE_7__ Chunk ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(Hypertable *ht, Oid chunk_relid, void *arg)
{
	VacuumCtx *ctx = (VacuumCtx *) arg;
	Chunk *chunk = FUNC4(chunk_relid, ht->space->num_dimensions, true);
	VacuumRelation *chunk_vacuum_rel;
	RangeVar *chunk_range_var = FUNC1(ctx->ht_vacuum_rel->relation);

	chunk_range_var->relname = FUNC0(chunk->fd.table_name);
	chunk_range_var->schemaname = FUNC0(chunk->fd.schema_name);
	chunk_vacuum_rel =
		FUNC3(chunk_range_var, chunk_relid, ctx->ht_vacuum_rel->va_cols);

	ctx->chunk_rels = FUNC2(ctx->chunk_rels, chunk_vacuum_rel);
}