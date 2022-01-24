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
struct TYPE_3__ {int /*<<< orphan*/  parent_indexoid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ChunkIndexMapping ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static Oid
FUNC6(Relation hypertable_rel, Chunk *src_chunk, Oid chunk_index_oid,
							Relation dest_chunk_rel, Oid index_tablespace)
{
	Relation chunk_index_rel = FUNC4(chunk_index_oid, AccessShareLock);
	ChunkIndexMapping cim;
	Oid constraint_oid;
	Oid new_chunk_indexrelid;

	FUNC5(src_chunk, chunk_index_oid, &cim);

	constraint_oid = FUNC2(cim.parent_indexoid);

	new_chunk_indexrelid = FUNC1(hypertable_rel,
													   chunk_index_rel,
													   dest_chunk_rel,
													   FUNC0(constraint_oid),
													   index_tablespace);

	FUNC3(chunk_index_rel, NoLock);
	return new_chunk_indexrelid;
}