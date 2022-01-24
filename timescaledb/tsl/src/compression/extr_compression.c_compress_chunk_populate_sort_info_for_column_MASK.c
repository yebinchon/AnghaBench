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
struct TYPE_7__ {int /*<<< orphan*/  gt_opr; int /*<<< orphan*/  lt_opr; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_9__ {int /*<<< orphan*/  attname; scalar_t__ orderby_asc; scalar_t__ orderby_nullsfirst; } ;
struct TYPE_8__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attcollation; int /*<<< orphan*/  attnum; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  TYPE_3__ ColumnCompressionInfo ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TYPECACHE_GT_OPR ; 
 int TYPECACHE_LT_OPR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(Oid table, const ColumnCompressionInfo *column,
											 AttrNumber *att_nums, Oid *sort_operator,
											 Oid *collation, bool *nulls_first)
{
	HeapTuple tp;
	Form_pg_attribute att_tup;
	TypeCacheEntry *tentry;

	tp = FUNC6(table, FUNC3(column->attname));
	if (!FUNC2(tp))
		FUNC7(ERROR, "table %d does not have column \"%s\"", table, FUNC3(column->attname));

	att_tup = (Form_pg_attribute) FUNC1(tp);
	// TODO other valdation checks?

	*att_nums = att_tup->attnum;
	*collation = att_tup->attcollation;
	*nulls_first = (!(FUNC0(column))) && column->orderby_nullsfirst;

	tentry = FUNC9(att_tup->atttypid, TYPECACHE_LT_OPR | TYPECACHE_GT_OPR);

	if (FUNC0(column) || column->orderby_asc)
		*sort_operator = tentry->lt_opr;
	else
		*sort_operator = tentry->gt_opr;

	if (!FUNC4(*sort_operator))
		FUNC7(ERROR,
			 "no valid sort operator for column \"%s\" of type \"%s\"",
			 FUNC3(column->attname),
			 FUNC8(att_tup->atttypid));

	FUNC5(tp);
}