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
struct TYPE_7__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_9__ {int /*<<< orphan*/  table_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_constraint_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_constraint_constraint_name ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(TupleInfo *ti)
{
	bool isnull;
	Datum constrname =
		FUNC5(ti->tuple, Anum_chunk_constraint_constraint_name, ti->desc, &isnull);
	int32 chunk_id =
		FUNC0(FUNC5(ti->tuple, Anum_chunk_constraint_chunk_id, ti->desc, &isnull));
	Chunk *chunk = FUNC7(chunk_id, 0, true);
	ObjectAddress constrobj = {
		.classId = ConstraintRelationId,
		.objectId =
			FUNC4(chunk->table_id, FUNC2(*FUNC1(constrname)), true),
	};

	if (FUNC3(constrobj.objectId))
		FUNC6(&constrobj, DROP_RESTRICT, 0);
}