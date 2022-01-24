#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int id; int /*<<< orphan*/  hypertable_id; TYPE_1__ table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_21__ {int /*<<< orphan*/  table_id; TYPE_3__ fd; int /*<<< orphan*/  hypertable_relid; int /*<<< orphan*/  constraints; int /*<<< orphan*/  cube; } ;
struct TYPE_20__ {int /*<<< orphan*/  hypertable_id; int /*<<< orphan*/  num_dimensions; } ;
struct TYPE_17__ {int /*<<< orphan*/  associated_table_prefix; } ;
struct TYPE_19__ {TYPE_2__ fd; int /*<<< orphan*/  main_table_relid; TYPE_5__* space; } ;
typedef  TYPE_4__ Hypertable ;
typedef  TYPE_5__ Hyperspace ;
typedef  TYPE_6__ Chunk ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,TYPE_6__*) ; 

Chunk *
FUNC20(Hypertable *compress_ht, Chunk *src_chunk)
{
	Hyperspace *hs = compress_ht->space;
	Catalog *catalog = FUNC9();
	CatalogSecurityContext sec_ctx;
	Chunk *compress_chunk;

	/* Create a new chunk based on the hypercube */
	FUNC7(FUNC8(), &sec_ctx);
	compress_chunk =
		FUNC15(FUNC11(catalog, CHUNK), hs->num_dimensions);
	FUNC10(&sec_ctx);

	compress_chunk->fd.hypertable_id = hs->hypertable_id;
	compress_chunk->cube = src_chunk->cube;
	compress_chunk->hypertable_relid = compress_ht->main_table_relid;
	compress_chunk->constraints = FUNC13(1, CurrentMemoryContext);
	FUNC5(&compress_chunk->fd.schema_name, INTERNAL_SCHEMA_NAME);
	FUNC6(compress_chunk->fd.table_name.data,
			 NAMEDATALEN,
			 "compress%s_%d_chunk",
			 FUNC0(compress_ht->fd.associated_table_prefix),
			 compress_chunk->fd.id);

	;

	/* Insert chunk */
	FUNC18(compress_chunk, RowExclusiveLock);

	/* only add inheritable constraints. no dimension constraints */
	FUNC12(compress_chunk->constraints,
													 compress_chunk->fd.id,
													 compress_chunk->hypertable_relid);

	/* Create the actual table relation for the chunk
	 * Note that we have to pick the tablespace here as the compressed ht doesn't have dimensions
	 * on which to base this decision. We simply pick the same tablespace as the uncompressed chunk
	 * for now.
	 */
	compress_chunk->table_id =
		FUNC16(compress_chunk,
							  compress_ht,
							  FUNC4(FUNC3(src_chunk->table_id)));

	if (!FUNC1(compress_chunk->table_id))
		FUNC2(ERROR, "could not create compress chunk table");

	/* Create the chunk's constraints*/
	FUNC14(compress_chunk->constraints,
								compress_chunk->table_id,
								compress_chunk->fd.id,
								compress_chunk->hypertable_relid,
								compress_chunk->fd.hypertable_id);

	FUNC19(compress_ht, compress_chunk);

	FUNC17(compress_chunk->fd.hypertable_id,
							  compress_chunk->hypertable_relid,
							  compress_chunk->fd.id,
							  compress_chunk->table_id);

	return compress_chunk;
}