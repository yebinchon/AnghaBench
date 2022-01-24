#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {int /*<<< orphan*/  hypertable_constraint_name; } ;
struct TYPE_9__ {TYPE_1__ fd; } ;
struct TYPE_8__ {scalar_t__ contype; int /*<<< orphan*/  conindid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FormData_pg_constraint ;
typedef  TYPE_3__ ChunkConstraint ;

/* Variables and functions */
 scalar_t__ CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  CONSTROID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static Oid
FUNC11(ChunkConstraint *cc, Oid chunk_oid, int32 chunk_id, Oid hypertable_oid,
						int32 hypertable_id)
{
	Oid chunk_constraint_oid;

	FUNC10(true);
	chunk_constraint_oid = FUNC6(cc, chunk_oid);
	FUNC10(false);

	/*
	 * The table constraint might not have been created if this constraint
	 * corresponds to a dimension slice that covers the entire range of values
	 * in the particular dimension. In that case, there is no need to add a
	 * table constraint.
	 */
	if (!FUNC3(chunk_constraint_oid))
		return InvalidOid;

	if (!FUNC8(cc))
	{
		Oid hypertable_constraint_oid =
			FUNC7(hypertable_oid,
										FUNC2(cc->fd.hypertable_constraint_name),
										false);
		HeapTuple tuple = FUNC5(CONSTROID, hypertable_constraint_oid);

		if (FUNC1(tuple))
		{
			FormData_pg_constraint *constr = (FormData_pg_constraint *) FUNC0(tuple);

			if (FUNC3(constr->conindid) && constr->contype != CONSTRAINT_FOREIGN)
				FUNC9(hypertable_id,
													  hypertable_constraint_oid,
													  chunk_id,
													  chunk_constraint_oid);

			FUNC4(tuple);
		}
	}

	return chunk_constraint_oid;
}