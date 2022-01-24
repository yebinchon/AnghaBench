#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ indrelid; } ;
struct TYPE_5__ {int /*<<< orphan*/  schema_name; } ;
struct TYPE_6__ {scalar_t__ main_table_relid; TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * Name ;
typedef  TYPE_2__ Hypertable ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(Hypertable *ht, Name index_name)
{
	Oid index_oid;
	HeapTuple idxtuple;
	Form_pg_index indexForm;

	index_oid = FUNC11(FUNC2(*index_name),
								  FUNC10(FUNC2(ht->fd.schema_name), false));
	idxtuple = FUNC5(INDEXRELID, FUNC3(index_oid));
	if (!FUNC1(idxtuple))
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC9("could not add reorder policy because the provided index is not a valid "
						"relation")));

	indexForm = (Form_pg_index) FUNC0(idxtuple);
	if (indexForm->indrelid != ht->main_table_relid)
		FUNC6(ERROR,
			 "could not add reorder policy because the provided index is not a valid index on the "
			 "hypertable");
	FUNC4(idxtuple);
}