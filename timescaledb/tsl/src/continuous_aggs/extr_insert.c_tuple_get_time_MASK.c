#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {int /*<<< orphan*/  column_name; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ fd; int /*<<< orphan*/ * partitioning; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ Dimension ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIMENSION_TYPE_OPEN ; 
 int /*<<< orphan*/  ERRCODE_NOT_NULL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64
FUNC10(Dimension *d, HeapTuple tuple, AttrNumber col, TupleDesc tupdesc)
{
	Datum datum;
	bool isnull;
	Oid dimtype;

	datum = FUNC6(tuple, col, tupdesc, &isnull);

	if (NULL != d->partitioning)
		datum = FUNC8(d->partitioning, datum);

	FUNC0(d->type == DIMENSION_TYPE_OPEN);

	dimtype = FUNC7(d);

	if (isnull)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_NOT_NULL_VIOLATION),
				 FUNC5("NULL value in column \"%s\" violates not-null constraint",
						FUNC1(d->fd.column_name)),
				 FUNC4("Columns used for time partitioning cannot be NULL")));

	return FUNC9(datum, dimtype);
}