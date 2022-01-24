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
struct TYPE_3__ {void* compressed_chunk_id; int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; void* hypertable_id; void* id; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ FormData_chunk ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_compressed_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_hypertable_id ; 
 int /*<<< orphan*/  Anum_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_schema_name ; 
 int /*<<< orphan*/  Anum_chunk_table_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* INVALID_CHUNK_ID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int Natts_chunk ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(FormData_chunk *fd, const HeapTuple tuple, const TupleDesc desc)
{
	bool nulls[Natts_chunk];
	Datum values[Natts_chunk];

	FUNC4(tuple, desc, values, nulls);

	FUNC0(!nulls[FUNC1(Anum_chunk_id)]);
	FUNC0(!nulls[FUNC1(Anum_chunk_hypertable_id)]);
	FUNC0(!nulls[FUNC1(Anum_chunk_schema_name)]);
	FUNC0(!nulls[FUNC1(Anum_chunk_table_name)]);

	fd->id = FUNC2(values[FUNC1(Anum_chunk_id)]);
	fd->hypertable_id = FUNC2(values[FUNC1(Anum_chunk_hypertable_id)]);
	FUNC5(&fd->schema_name,
		   FUNC3(values[FUNC1(Anum_chunk_schema_name)]),
		   NAMEDATALEN);
	FUNC5(&fd->table_name,
		   FUNC3(values[FUNC1(Anum_chunk_table_name)]),
		   NAMEDATALEN);

	if (nulls[FUNC1(Anum_chunk_compressed_chunk_id)])
		fd->compressed_chunk_id = INVALID_CHUNK_ID;
	else
		fd->compressed_chunk_id =
			FUNC2(values[FUNC1(Anum_chunk_compressed_chunk_id)]);
}