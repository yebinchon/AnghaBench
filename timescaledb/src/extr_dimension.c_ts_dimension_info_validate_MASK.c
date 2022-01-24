#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_13__ {TYPE_2__ fd; } ;
struct TYPE_12__ {int set_not_null; int skip; int type; int /*<<< orphan*/ * colname; int /*<<< orphan*/  dimension_id; int /*<<< orphan*/  if_not_exists; TYPE_1__* ht; int /*<<< orphan*/  coltype; int /*<<< orphan*/  table_relid; int /*<<< orphan*/  interval_type; scalar_t__ num_slices_is_set; } ;
struct TYPE_10__ {int /*<<< orphan*/  space; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ DimensionInfo ;
typedef  TYPE_4__ Dimension ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNAME ; 
 int /*<<< orphan*/  Anum_pg_attribute_attnotnull ; 
 int /*<<< orphan*/  Anum_pg_attribute_atttypid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
#define  DIMENSION_TYPE_ANY 130 
#define  DIMENSION_TYPE_CLOSED 129 
#define  DIMENSION_TYPE_OPEN 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_TS_DUPLICATE_DIMENSION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC17(DimensionInfo *info)
{
	Dimension *dim;
	HeapTuple tuple;
	Datum datum;
	bool isnull = false;

	if (!FUNC1(info))
		FUNC13(ERROR,
				(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE), FUNC15("invalid dimension info")));

	if (info->num_slices_is_set && FUNC6(info->interval_type))
		FUNC13(ERROR,
				(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC15("cannot specify both the number of partitions and an interval")));

	/* Check that the column exists and get its NOT NULL status */
	tuple = FUNC8(info->table_relid, FUNC5(*info->colname));

	if (!FUNC4(tuple))
		FUNC13(ERROR,
				(FUNC14(ERRCODE_UNDEFINED_COLUMN),
				 FUNC15("column \"%s\" does not exist", FUNC5(*info->colname))));

	datum = FUNC9(ATTNAME, tuple, Anum_pg_attribute_atttypid, &isnull);
	FUNC0(!isnull);

	info->coltype = FUNC3(datum);

	datum = FUNC9(ATTNAME, tuple, Anum_pg_attribute_attnotnull, &isnull);
	FUNC0(!isnull);

	info->set_not_null = !FUNC2(datum);

	FUNC7(tuple);

	if (NULL != info->ht)
	{
		/* Check if the dimension already exists */
		dim = FUNC16(info->ht->space,
												  DIMENSION_TYPE_ANY,
												  FUNC5(*info->colname));

		if (NULL != dim)
		{
			if (!info->if_not_exists)
				FUNC13(ERROR,
						(FUNC14(ERRCODE_TS_DUPLICATE_DIMENSION),
						 FUNC15("column \"%s\" is already a dimension", FUNC5(*info->colname))));

			info->dimension_id = dim->fd.id;
			info->skip = true;

			FUNC13(NOTICE,
					(FUNC15("column \"%s\" is already a dimension, skipping",
							FUNC5(*info->colname))));
			return;
		}
	}

	switch (info->type)
	{
		case DIMENSION_TYPE_CLOSED:
			FUNC10(info);
			break;
		case DIMENSION_TYPE_OPEN:
			FUNC11(info);
			break;
		case DIMENSION_TYPE_ANY:
			FUNC12(ERROR, "invalid dimension type in configuration");
			break;
	}
}