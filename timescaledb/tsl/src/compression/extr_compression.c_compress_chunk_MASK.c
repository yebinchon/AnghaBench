#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  Tuplesortstate ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_5__ {int natts; } ;
typedef  int /*<<< orphan*/  RowCompressor ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ColumnCompressionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int*,int /*<<< orphan*/  const***) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(Oid in_table, Oid out_table, const ColumnCompressionInfo **column_compression_info,
			   int num_compression_infos)
{
	int n_keys;
	const ColumnCompressionInfo **keys;

	/*We want to prevent other compressors from compressing this table,
	 * and we want to prevent INSERTs or UPDATEs which could mess up our compression.
	 * We may as well allow readers to keep reading the uncompressed data while
	 * we are compressing, so we only take an ExclusiveLock instead of AccessExclusive.
	 */
	Relation in_rel = FUNC6(in_table, ExclusiveLock);
	/* we are _just_ INSERTing into the out_table so in principle we could take
	 * a RowExclusive lock, and let other operations read and write this table
	 * as we work. However, we currently compress each table as a oneshot, so
	 * we're taking the stricter lock to prevent accidents.
	 */
	Relation out_rel = FUNC6(out_table, ExclusiveLock);
	// TODO error if out_rel is non-empty
	// TODO typecheck the output types
	int16 *in_column_offsets = FUNC3(in_table,
															column_compression_info,
															num_compression_infos,
															&n_keys,
															&keys);

	TupleDesc in_desc = FUNC2(in_rel);
	TupleDesc out_desc = FUNC2(out_rel);

	Tuplesortstate *sorted_rel = FUNC4(in_rel, n_keys, keys);

	RowCompressor row_compressor;

	FUNC0(num_compression_infos <= in_desc->natts);
	FUNC0(num_compression_infos <= out_desc->natts);

	FUNC9(&row_compressor,
						in_desc,
						out_rel,
						num_compression_infos,
						column_compression_info,
						in_column_offsets,
						out_desc->natts);

	FUNC7(&row_compressor, sorted_rel, in_desc);

	FUNC8(&row_compressor);

	FUNC11(sorted_rel);

	FUNC10(in_table);

	/* recreate all indexes on out rel, we already have an exvclusive lock on it
	 * so the strong locks taken by reindex_relation shouldn't matter. */
	FUNC5(out_table, 0, 0);

	FUNC1(out_rel);
	FUNC1(in_rel);
}