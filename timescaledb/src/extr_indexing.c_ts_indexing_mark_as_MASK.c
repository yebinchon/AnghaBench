#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int indisvalid; int indisclustered; int /*<<< orphan*/  indisready; int /*<<< orphan*/  indislive; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int IndexValidity ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  INDEXRELID ; 
#define  IndexInvalid 129 
 int /*<<< orphan*/  IndexRelationId ; 
#define  IndexValid 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10(Oid index_id, IndexValidity validity)
{
	Relation pg_index;
	HeapTuple indexTuple;
	HeapTuple new_tuple;
	Form_pg_index indexForm;
	bool was_valid;

	/* Open pg_index and fetch a writable copy of the index's tuple */
	pg_index = FUNC9(IndexRelationId, RowExclusiveLock);

	indexTuple = FUNC5(INDEXRELID, FUNC4(index_id));

	if (!FUNC3(indexTuple))
		FUNC6(ERROR, "cache lookup failed when marking index %u", index_id);

	new_tuple = FUNC8(indexTuple);
	indexForm = (Form_pg_index) FUNC2(new_tuple);

	was_valid = indexForm->indisvalid;

	/* Perform the requested state change on the copy */
	switch (validity)
	{
		case IndexValid:
			FUNC0(indexForm->indislive);
			FUNC0(indexForm->indisready);
			indexForm->indisvalid = true;
			break;
		case IndexInvalid:
			indexForm->indisvalid = false;
			indexForm->indisclustered = false;
			break;
	}

	/* ... and write it back */
	FUNC1(pg_index, &indexTuple->t_self, new_tuple);

	FUNC7(pg_index, RowExclusiveLock);
	return was_valid;
}