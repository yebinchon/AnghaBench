#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_7__ {int /*<<< orphan*/  table_id; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_constraint_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_constraint_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(TupleInfo *ti)
{
	bool isnull;
	Datum constrname =
		FUNC6(ti->tuple, Anum_chunk_constraint_constraint_name, ti->desc, &isnull);
	int32 chunk_id =
		FUNC0(FUNC6(ti->tuple, Anum_chunk_constraint_chunk_id, ti->desc, &isnull));
	Chunk *chunk = FUNC8(chunk_id, 0, true);
	Oid index_relid = FUNC4(
		FUNC5(chunk->table_id, FUNC2(*FUNC1(constrname)), true));

	/*
	 * If this is an index constraint, we need to cleanup the index
	 * metadata. Don't drop the index though, since that will happend when
	 * the constraint is dropped.
	 */
	if (FUNC3(index_relid))
		FUNC9(chunk, index_relid, false);

	FUNC7(ti->scanrel, ti->tuple);
}