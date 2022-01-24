#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_15__ {scalar_t__ typid; int /*<<< orphan*/  typlen; int /*<<< orphan*/  typbyval; } ;
struct TYPE_19__ {TYPE_2__ base; } ;
struct TYPE_18__ {int isnull; int /*<<< orphan*/  value; int /*<<< orphan*/  time; } ;
struct TYPE_17__ {size_t time_index; int /*<<< orphan*/  gapfill_typid; TYPE_1__** columns; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; } ;
struct TYPE_14__ {scalar_t__ typid; } ;
struct TYPE_13__ {scalar_t__ atttypid; } ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_3__ HeapTupleData ;
typedef  TYPE_4__ GapFillState ;
typedef  TYPE_5__ GapFillInterpolateSample ;
typedef  TYPE_6__ GapFillInterpolateColumnState ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ RECORDOID ; 
 TYPE_12__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(GapFillState *state, GapFillInterpolateColumnState *column,
					 GapFillInterpolateSample *sample, Expr *lookup)
{
	HeapTupleHeader th;
	HeapTupleData tuple;
	TupleDesc tupdesc;
	Datum value;
	bool isnull;
	Datum datum = FUNC14(state, lookup, &isnull);

	if (isnull)
	{
		sample->isnull = true;
		return;
	}

	th = FUNC1(datum);
	if (FUNC4(th) != 2)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC12("interpolate RECORD arguments must have 2 elements")));

	/* Extract type information from the tuple itself */
	FUNC0(RECORDOID == FUNC6(th));
	tupdesc = FUNC16(FUNC6(th), FUNC5(th));

	/* Build a temporary HeapTuple control structure */
	tuple.t_len = FUNC3(th);
	FUNC7(&(tuple.t_self));
	tuple.t_tableOid = InvalidOid;
	tuple.t_data = th;

	/* check first element in record matches timestamp datatype */
	if (FUNC8(tupdesc, 0)->atttypid != state->columns[state->time_index]->typid)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC12("first argument of interpolate returned record must match used timestamp "
						"datatype")));

	/* check second element in record matches interpolate datatype */
	if (FUNC8(tupdesc, 1)->atttypid != column->base.typid)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC12("second argument of interpolate returned record must match used "
						"interpolate datatype")));

	value = FUNC15(&tuple, 1, tupdesc, &sample->isnull);
	if (!sample->isnull)
	{
		sample->time = FUNC13(value, state->gapfill_typid);

		value = FUNC15(&tuple, 2, tupdesc, &sample->isnull);
		if (!sample->isnull)
			sample->value = FUNC9(value, column->base.typbyval, column->base.typlen);
	}

	FUNC2(tupdesc);
}