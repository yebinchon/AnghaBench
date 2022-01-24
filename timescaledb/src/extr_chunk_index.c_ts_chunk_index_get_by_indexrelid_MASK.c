#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ChunkIndexMapping ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_chunk_index_chunk_id_index_name_idx_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_index_chunk_id_index_name_idx_index_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunk_index_tuple_found ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namein ; 

bool
FUNC7(Chunk *chunk, Oid chunk_indexrelid, ChunkIndexMapping *cim_out)
{
	int tuples_found;
	ScanKeyData scankey[2];
	const char *indexname = FUNC6(chunk_indexrelid);

	FUNC0(cim_out != NULL);

	FUNC4(&scankey[0],
				Anum_chunk_index_chunk_id_index_name_idx_chunk_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC3(chunk->fd.id));
	FUNC4(&scankey[1],
				Anum_chunk_index_chunk_id_index_name_idx_index_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC2(namein, FUNC1(indexname)));

	tuples_found = FUNC5(CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX,
									scankey,
									2,
									chunk_index_tuple_found,
									NULL,
									cim_out,
									AccessShareLock);

	return tuples_found > 0;
}