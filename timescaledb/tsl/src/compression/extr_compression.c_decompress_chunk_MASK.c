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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_11__ {int /*<<< orphan*/  type_oid; } ;
struct TYPE_10__ {scalar_t__ num_compressed_columns; void* decompressed_datums; void* decompressed_is_nulls; int /*<<< orphan*/  bistate; int /*<<< orphan*/  per_compressed_cols; int /*<<< orphan*/  mycid; int /*<<< orphan*/  out_rel; TYPE_1__* out_desc; } ;
struct TYPE_9__ {scalar_t__ natts; } ;
typedef  int /*<<< orphan*/  ScanKey ;
typedef  TYPE_2__ RowDecompressor ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  HeapScanDesc ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CUSTOM_TYPE_COMPRESSED_DATA ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ ) ; 

void
FUNC23(Oid in_table, Oid out_table)
{
	/* these locks are taken in the order uncompressed table then compressed table
	 * for consistency with compress_chunk
	 */
	/* we are _just_ INSERTing into the out_table so in principle we could take
	 * a RowExclusive lock, and let other operations read and write this table
	 * as we work. However, we currently compress each table as a oneshot, so
	 * we're taking the stricter lock to prevent accidents.
	 */
	Relation out_rel = FUNC20(out_table, ExclusiveLock);
	/*We want to prevent other decompressors from decompressing this table,
	 * and we want to prevent INSERTs or UPDATEs which could mess up our decompression.
	 * We may as well allow readers to keep reading the compressed data while
	 * we are compressing, so we only take an ExclusiveLock instead of AccessExclusive.
	 */
	Relation in_rel = FUNC20(in_table, ExclusiveLock);
	// TODO error if out_rel is non-empty

	TupleDesc in_desc = FUNC11(in_rel);
	TupleDesc out_desc = FUNC11(out_rel);

	Oid compressed_data_type_oid = FUNC22(CUSTOM_TYPE_COMPRESSED_DATA)->type_oid;

	FUNC1(in_desc->natts >= out_desc->natts);
	FUNC1(FUNC9(compressed_data_type_oid));

	{
		RowDecompressor decompressor = {
			.per_compressed_cols = FUNC12(in_desc,
																out_desc,
																out_table,
																compressed_data_type_oid),
			.num_compressed_columns = in_desc->natts,

			.out_desc = out_desc,
			.out_rel = out_rel,

			.mycid = FUNC4(true),
			.bistate = FUNC3(),

			/* cache memory used to store the decompressed datums/is_null for form_tuple */
			.decompressed_datums = FUNC17(sizeof(Datum) * out_desc->natts),
			.decompressed_is_nulls = FUNC17(sizeof(bool) * out_desc->natts),
		};
		Datum *compressed_datums = FUNC17(sizeof(*compressed_datums) * in_desc->natts);
		bool *compressed_is_nulls = FUNC17(sizeof(*compressed_is_nulls) * in_desc->natts);

		HeapTuple compressed_tuple;
		HeapScanDesc heapScan = FUNC13(in_rel, FUNC5(), 0, (ScanKey) NULL);
		MemoryContext per_compressed_row_ctx =
			FUNC0(CurrentMemoryContext,
								  "decompress chunk per-compressed row",
								  ALLOCSET_DEFAULT_SIZES);

		for (compressed_tuple = FUNC16(heapScan, ForwardScanDirection);
			 compressed_tuple != NULL;
			 compressed_tuple = FUNC16(heapScan, ForwardScanDirection))
		{
			MemoryContext old_ctx;

			FUNC1(FUNC6(compressed_tuple));

			old_ctx = FUNC8(per_compressed_row_ctx);

			FUNC14(compressed_tuple, in_desc, compressed_datums, compressed_is_nulls);
			FUNC18(decompressor.per_compressed_cols,
													  in_desc->natts,
													  compressed_datums,
													  compressed_is_nulls);

			FUNC21(&decompressor);
			FUNC8(old_ctx);
			FUNC7(per_compressed_row_ctx);
		}

		FUNC15(heapScan);
		FUNC2(decompressor.bistate);
	}

	/* recreate all indexes on out rel, we already have an exvclusive lock on it
	 * so the strong locks taken by reindex_relation shouldn't matter. */
	FUNC19(out_table, 0, 0);

	FUNC10(out_rel);
	FUNC10(in_rel);
}