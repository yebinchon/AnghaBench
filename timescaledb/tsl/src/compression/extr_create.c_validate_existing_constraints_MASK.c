#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int16 ;
struct TYPE_10__ {TYPE_1__* col_meta; } ;
struct TYPE_9__ {scalar_t__ contype; int /*<<< orphan*/  conname; } ;
struct TYPE_8__ {int /*<<< orphan*/  main_table_relid; } ;
struct TYPE_7__ {int segmentby_column_index; int orderby_column_index; int /*<<< orphan*/  attname; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Name ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ Hypertable ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ CompressColInfo ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conkey ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 scalar_t__ CONSTRAINT_EXCLUSION ; 
 scalar_t__ CONSTRAINT_FOREIGN ; 
 scalar_t__ CONSTRAINT_TRIGGER ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT2OID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC27(Hypertable *ht, CompressColInfo *colinfo)
{
	Oid relid = ht->main_table_relid;
	Relation pg_constr;
	SysScanDesc scan;
	ScanKeyData scankey;
	HeapTuple tuple;
	List *conlist = NIL;
	ArrayType *arr;

	pg_constr = FUNC20(ConstraintRelationId, AccessShareLock);

	FUNC12(&scankey,
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber,
				F_OIDEQ,
				FUNC10(relid));

	scan = FUNC24(pg_constr, ConstraintRelidTypidNameIndexId, true, NULL, 1, &scankey);
	while (FUNC8(tuple = FUNC26(scan)))
	{
		Form_pg_constraint form = (Form_pg_constraint) FUNC6(tuple);

		/* we check primary ,unique and exclusion constraints.
		 * move foreign key constarints over to compression table
		 * ignore triggers
		 */
		if (form->contype == CONSTRAINT_CHECK || form->contype == CONSTRAINT_TRIGGER)
			continue;
		else if (form->contype == CONSTRAINT_EXCLUSION)
		{
			FUNC14(ERROR,
					(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC17("constraint %s is not supported for compression",
							FUNC9(form->conname)),
					 FUNC16("Exclusion constraints are not supported on hypertables that are "
							 "compressed.")));
		}
		else
		{
			int j, numkeys;
			int16 *attnums;
			bool isNull;
			/* Extract the conkey array, ie, attnums of PK's columns */
			Datum adatum = FUNC19(tuple,
										Anum_pg_constraint_conkey,
										FUNC11(pg_constr),
										&isNull);
			if (isNull)
				FUNC13(ERROR, "null conkey for constraint %u", FUNC7(tuple));
			arr = FUNC5(adatum); /* ensure not toasted */
			numkeys = FUNC1(arr)[0];
			if (FUNC4(arr) != 1 || numkeys < 0 || FUNC3(arr) ||
				FUNC2(arr) != INT2OID)
				FUNC13(ERROR, "conkey is not a 1-D smallint array");
			attnums = (int16 *) FUNC0(arr);
			for (j = 0; j < numkeys; j++)
			{
				int16 colno = attnums[j] - 1;
				if (form->contype == CONSTRAINT_FOREIGN)
				{
					/* is this a segment-by column */
					if (colinfo->col_meta[colno].segmentby_column_index < 1)
					{
						FUNC14(ERROR,
								(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
								 FUNC17("constraint %s requires column %s to be a segment_by "
										"column for compression",
										FUNC9(form->conname),
										FUNC9(colinfo->col_meta[colno].attname)),
								 FUNC16("Only segment by columns can be used in foreign key"
										 "constraints on hypertables that are compressed.")));
					}
					else
					{
						Name conname = FUNC23(NAMEDATALEN);
						FUNC22(conname, &form->conname);
						conlist = FUNC21(conlist, conname);
					}
				}
				else
				{
					/* is colno  a segment-by or order_by column */
					if (colinfo->col_meta[colno].segmentby_column_index < 1 &&
						colinfo->col_meta[colno].orderby_column_index < 1)
						FUNC14(ERROR,
								(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
								 FUNC17("constraint %s requires column %s to be a segment_by or "
										"order_by column for compression",
										FUNC9(form->conname),
										FUNC9(colinfo->col_meta[colno].attname)),
								 FUNC16("Only segment by and order by columns can be used in "
										 "constraints on hypertables that are compressed.")));
				}
			}
		}
	}

	FUNC25(scan);
	FUNC18(pg_constr, AccessShareLock);
	return conlist;
}