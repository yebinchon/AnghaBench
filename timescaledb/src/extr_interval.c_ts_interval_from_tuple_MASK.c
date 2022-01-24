#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  integer_interval; int /*<<< orphan*/  time_interval; scalar_t__ is_time_interval; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_1__ HeapTupleData ;
typedef  TYPE_2__ FormData_ts_interval ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_integer_interval ; 
 int /*<<< orphan*/  Anum_is_time_interval ; 
 int /*<<< orphan*/  Anum_time_interval ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int Natts_ts_interval ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int) ; 

FormData_ts_interval *
FUNC13(Datum interval)
{
	bool isnull[Natts_ts_interval];
	Datum values[Natts_ts_interval];
	HeapTupleHeader th;
	HeapTupleData tuple;
	FormData_ts_interval *invl;

	Oid rowType;
	int32 rowTypmod;
	TupleDesc rowdesc;

	th = FUNC2(interval);
	rowType = FUNC8(th);
	rowTypmod = FUNC7(th);
	rowdesc = FUNC11(rowType, rowTypmod);

	tuple.t_len = FUNC6(th);
	FUNC9(&(tuple.t_self));
	tuple.t_tableOid = InvalidOid;
	tuple.t_data = th;

	FUNC10(&tuple, rowdesc, values, isnull);
	// lookup_rowtype_tupdesc gives a ref counted pointer
	FUNC5(rowdesc);

	invl = FUNC12(sizeof(FormData_ts_interval));

	FUNC0(!isnull[FUNC1(Anum_is_time_interval)]);

	invl->is_time_interval = values[FUNC1(Anum_is_time_interval)];
	if (invl->is_time_interval)
	{
		FUNC0(!isnull[FUNC1(Anum_time_interval)]);
		FUNC0(isnull[FUNC1(Anum_integer_interval)]);
		invl->time_interval =
			*FUNC4(values[FUNC1(Anum_time_interval)]);
	}
	else
	{
		FUNC0(isnull[FUNC1(Anum_time_interval)]);
		FUNC0(!isnull[FUNC1(Anum_integer_interval)]);
		invl->integer_interval =
			FUNC3(values[FUNC1(Anum_integer_interval)]);
	}

	return invl;
}