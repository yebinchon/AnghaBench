#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_16__ {scalar_t__ type_oid; } ;
struct TYPE_15__ {scalar_t__ attnum; scalar_t__ atttypid; int attstattarget; int /*<<< orphan*/  attname; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_13__ {int natts; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_attribute ;

/* Variables and functions */
 scalar_t__ AttributeRelationId ; 
 int /*<<< orphan*/  CUSTOM_TYPE_COMPRESSED_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 TYPE_3__* FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(Oid compressed_table_id)
{
	Relation table_rel = FUNC14(compressed_table_id, ShareUpdateExclusiveLock);
	Relation attrelation = FUNC14(AttributeRelationId, RowExclusiveLock);
	TupleDesc table_desc = FUNC6(table_rel);
	Oid compressed_data_type = FUNC15(CUSTOM_TYPE_COMPRESSED_DATA)->type_oid;
	for (int i = 0; i < table_desc->natts; i++)
	{
		Form_pg_attribute attrtuple;
		HeapTuple tuple;
		Form_pg_attribute col_attr = FUNC9(table_desc, i);

		/* skip system columns */
		if (col_attr->attnum <= 0)
			continue;

		tuple = FUNC8(compressed_table_id, FUNC4(col_attr->attname));

		if (!FUNC2(tuple))
			FUNC10(ERROR,
					(FUNC11(ERRCODE_UNDEFINED_COLUMN),
					 FUNC12("column \"%s\" of compressed table \"%s\" does not exist",
							FUNC4(col_attr->attname),
							FUNC7(table_rel))));

		attrtuple = (Form_pg_attribute) FUNC1(tuple);

		/* the planner should never look at compressed column statistics because
		 * it will not understand them. Statistics on the other columns,
		 * segmentbys and metadata, are very important, so we increase their
		 * target.
		 */
		if (col_attr->atttypid == compressed_data_type)
			attrtuple->attstattarget = 0;
		else
			attrtuple->attstattarget = 1000;

		FUNC0(attrelation, &tuple->t_self, tuple);

		FUNC3(RelationRelationId, compressed_table_id, attrtuple->attnum);
		FUNC13(tuple);
	}

	FUNC5(attrelation);
	FUNC5(table_rel);
}