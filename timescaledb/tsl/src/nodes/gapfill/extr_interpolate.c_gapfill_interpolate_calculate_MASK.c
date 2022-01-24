#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_12__ {scalar_t__ time; int /*<<< orphan*/  value; scalar_t__ isnull; } ;
struct TYPE_9__ {int typid; } ;
struct TYPE_11__ {TYPE_1__ base; TYPE_8__ next; TYPE_8__ prev; scalar_t__ lookup_after; scalar_t__ lookup_before; } ;
struct TYPE_10__ {scalar_t__ gapfill_start; scalar_t__ state; } ;
typedef  TYPE_2__ GapFillState ;
typedef  TYPE_3__ GapFillInterpolateColumnState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FETCHED_LAST ; 
 scalar_t__ FETCHED_NEXT_GROUP ; 
#define  FLOAT4OID 132 
#define  FLOAT8OID 131 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  INT2OID 130 
#define  INT4OID 129 
#define  INT8OID 128 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*,TYPE_8__*,scalar_t__) ; 
 int /*<<< orphan*/  int2_numeric ; 
 int /*<<< orphan*/  int4_numeric ; 
 int /*<<< orphan*/  int8_numeric ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  numeric_int2 ; 
 int /*<<< orphan*/  numeric_int4 ; 
 int /*<<< orphan*/  numeric_int8 ; 
 int /*<<< orphan*/  FUNC12 () ; 

void
FUNC13(GapFillInterpolateColumnState *column, GapFillState *state,
							  int64 time, Datum *value, bool *isnull)
{
	int64 x, x0, x1;
	Datum y0, y1;

	/* only evaluate expr for first tuple */
	if (column->prev.isnull && column->lookup_before && time == state->gapfill_start)
		FUNC10(state, column, &column->prev, column->lookup_before);

	if (column->next.isnull && column->lookup_after &&
		(FETCHED_LAST == state->state || FETCHED_NEXT_GROUP == state->state))
		FUNC10(state, column, &column->next, column->lookup_after);

	*isnull = column->prev.isnull || column->next.isnull;
	if (*isnull)
		return;

	y0 = column->prev.value;
	y1 = column->next.value;

	x = time;
	x0 = column->prev.time;
	x1 = column->next.time;

	switch (column->base.typid)
	{
		/* All integer types must use numeric-based interpolation calculations since they are
		 * multiplied by int64 and this could cause an overflow. numerics also interpolate better
		 * because the answer is rounded and not truncated. We can't use float8 because that
		 doesn't handle really big ints exactly. We can't use the Postgres INT128 implementation
		 because it doesn't support division. */
		case INT2OID:
			*value =
				FUNC2(numeric_int2,
									FUNC11(x,
														x0,
														x1,
														FUNC2(int2_numeric, y0),
														FUNC2(int2_numeric, y1)));
			break;
		case INT4OID:
			*value =
				FUNC2(numeric_int4,
									FUNC11(x,
														x0,
														x1,
														FUNC2(int4_numeric, y0),
														FUNC2(int4_numeric, y1)));
			break;
		case INT8OID:
			*value =
				FUNC2(numeric_int8,
									FUNC11(x,
														x0,
														x1,
														FUNC2(int8_numeric, y0),
														FUNC2(int8_numeric, y1)));
			break;
		case FLOAT4OID:
			*value = FUNC3(FUNC5(x, x0, x1, FUNC0(y0), FUNC0(y1)));
			break;
		case FLOAT8OID:
			*value = FUNC4(FUNC5(x, x0, x1, FUNC1(y0), FUNC1(y1)));
			break;
		default:

			/*
			 * should never happen since interpolate is not defined for other
			 * datatypes
			 */
			FUNC6(ERROR,
					(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC8("unsupported datatype for interpolate: %s",
							FUNC9(column->base.typid))));
			FUNC12();
			break;
	}
}