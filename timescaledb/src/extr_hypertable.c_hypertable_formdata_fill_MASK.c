#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {void* compressed_hypertable_id; int /*<<< orphan*/  compressed; int /*<<< orphan*/  chunk_target_size; int /*<<< orphan*/  chunk_sizing_func_name; int /*<<< orphan*/  chunk_sizing_func_schema; int /*<<< orphan*/  num_dimensions; int /*<<< orphan*/  associated_table_prefix; int /*<<< orphan*/  associated_schema_name; int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; void* id; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ FormData_hypertable ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_hypertable_associated_schema_name ; 
 int /*<<< orphan*/  Anum_hypertable_associated_table_prefix ; 
 int /*<<< orphan*/  Anum_hypertable_chunk_sizing_func_name ; 
 int /*<<< orphan*/  Anum_hypertable_chunk_sizing_func_schema ; 
 int /*<<< orphan*/  Anum_hypertable_chunk_target_size ; 
 int /*<<< orphan*/  Anum_hypertable_compressed ; 
 int /*<<< orphan*/  Anum_hypertable_compressed_hypertable_id ; 
 int /*<<< orphan*/  Anum_hypertable_id ; 
 int /*<<< orphan*/  Anum_hypertable_num_dimensions ; 
 int /*<<< orphan*/  Anum_hypertable_schema_name ; 
 int /*<<< orphan*/  Anum_hypertable_table_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* INVALID_HYPERTABLE_ID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int Natts_hypertable ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(FormData_hypertable *fd, const HeapTuple tuple, const TupleDesc desc)
{
	bool nulls[Natts_hypertable];
	Datum values[Natts_hypertable];

	FUNC7(tuple, desc, values, nulls);

	FUNC0(!nulls[FUNC1(Anum_hypertable_id)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_schema_name)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_table_name)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_associated_schema_name)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_associated_table_prefix)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_num_dimensions)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_chunk_sizing_func_schema)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_chunk_sizing_func_name)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_chunk_target_size)]);
	FUNC0(!nulls[FUNC1(Anum_hypertable_compressed)]);

	fd->id = FUNC4(values[FUNC1(Anum_hypertable_id)]);
	FUNC8(&fd->schema_name,
		   FUNC6(values[FUNC1(Anum_hypertable_schema_name)]),
		   NAMEDATALEN);
	FUNC8(&fd->table_name,
		   FUNC6(values[FUNC1(Anum_hypertable_table_name)]),
		   NAMEDATALEN);
	FUNC8(&fd->associated_schema_name,
		   FUNC6(values[FUNC1(Anum_hypertable_associated_schema_name)]),
		   NAMEDATALEN);
	FUNC8(&fd->associated_table_prefix,
		   FUNC6(values[FUNC1(Anum_hypertable_associated_table_prefix)]),
		   NAMEDATALEN);

	fd->num_dimensions =
		FUNC3(values[FUNC1(Anum_hypertable_num_dimensions)]);

	FUNC8(&fd->chunk_sizing_func_schema,
		   FUNC6(values[FUNC1(Anum_hypertable_chunk_sizing_func_schema)]),
		   NAMEDATALEN);
	FUNC8(&fd->chunk_sizing_func_name,
		   FUNC6(values[FUNC1(Anum_hypertable_chunk_sizing_func_name)]),
		   NAMEDATALEN);

	fd->chunk_target_size =
		FUNC5(values[FUNC1(Anum_hypertable_chunk_target_size)]);
	fd->compressed = FUNC2(values[FUNC1(Anum_hypertable_compressed)]);

	if (nulls[FUNC1(Anum_hypertable_compressed_hypertable_id)])
		fd->compressed_hypertable_id = INVALID_HYPERTABLE_ID;
	else
		fd->compressed_hypertable_id = FUNC4(
			values[FUNC1(Anum_hypertable_compressed_hypertable_id)]);
}