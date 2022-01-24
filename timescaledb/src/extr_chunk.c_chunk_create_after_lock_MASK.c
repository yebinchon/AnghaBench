#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  data; } ;
struct TYPE_24__ {int id; int /*<<< orphan*/  hypertable_id; TYPE_1__ table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_28__ {int /*<<< orphan*/  table_id; TYPE_2__ fd; int /*<<< orphan*/  hypertable_relid; int /*<<< orphan*/  constraints; TYPE_5__* cube; } ;
struct TYPE_27__ {int /*<<< orphan*/  num_slices; int /*<<< orphan*/  slices; } ;
struct TYPE_26__ {int /*<<< orphan*/  hypertable_id; int /*<<< orphan*/  num_dimensions; } ;
struct TYPE_25__ {int /*<<< orphan*/  main_table_relid; TYPE_4__* space; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_3__ Hypertable ;
typedef  TYPE_4__ Hyperspace ;
typedef  TYPE_5__ Hypercube ;
typedef  TYPE_6__ Chunk ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC18 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,TYPE_6__*) ; 

__attribute__((used)) static Chunk *
FUNC21(Hypertable *ht, Point *p, const char *schema, const char *prefix)
{
	Hyperspace *hs = ht->space;
	Catalog *catalog = FUNC8();
	CatalogSecurityContext sec_ctx;
	Hypercube *cube;
	Chunk *chunk;

	/*
	 * If the user has enabled adaptive chunking, call the function to
	 * calculate and set the new chunk time interval.
	 */
	FUNC1(ht, p);

	/* Calculate the hypercube for a new chunk that covers the tuple's point */
	cube = FUNC18(hs, p);

	/* Resolve collisions with other chunks by cutting the new hypercube */
	FUNC2(hs, cube, p);

	/* Create a new chunk based on the hypercube */
	FUNC6(FUNC7(), &sec_ctx);
	chunk = FUNC13(FUNC10(catalog, CHUNK), hs->num_dimensions);
	FUNC9(&sec_ctx);

	chunk->fd.hypertable_id = hs->hypertable_id;
	chunk->cube = cube;
	chunk->hypertable_relid = ht->main_table_relid;
	FUNC4(&chunk->fd.schema_name, schema);
	FUNC5(chunk->fd.table_name.data, NAMEDATALEN, "%s_%d_chunk", prefix, chunk->fd.id);

	/* Insert chunk */
	FUNC16(chunk, RowExclusiveLock);

	/* Insert any new dimension slices */
	FUNC17(cube->slices, cube->num_slices);

	/* Add metadata for dimensional and inheritable constraints */
	FUNC11(chunk);

	/* Create the actual table relation for the chunk */
	chunk->table_id =
		FUNC14(chunk, ht, FUNC19(ht, chunk));

	if (!FUNC0(chunk->table_id))
		FUNC3(ERROR, "could not create chunk table");

	/* Create the chunk's constraints, triggers, and indexes */
	FUNC12(chunk->constraints,
								chunk->table_id,
								chunk->fd.id,
								chunk->hypertable_relid,
								chunk->fd.hypertable_id);

	FUNC20(ht, chunk);

	FUNC15(chunk->fd.hypertable_id,
							  chunk->hypertable_relid,
							  chunk->fd.id,
							  chunk->table_id);

	return chunk;
}