#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  integer_interval; int /*<<< orphan*/  time_interval; scalar_t__ is_time_interval; } ;
typedef  int Oid ;
typedef  TYPE_1__ FormData_ts_interval ;
typedef  int /*<<< orphan*/  Dimension ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DATEOID 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int InvalidOid ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  timestamp_date ; 
 int /*<<< orphan*/  timestamp_mi_interval ; 
 int /*<<< orphan*/  timestamptz_mi_interval ; 
 int /*<<< orphan*/  timestamptz_timestamp ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

Datum
FUNC14(FormData_ts_interval *invl, Dimension *open_dim)
{
	Oid type_oid;
	FUNC0(invl != NULL);
	FUNC0(open_dim != NULL);

	type_oid = FUNC11(open_dim);

	if (invl->is_time_interval)
	{
		Datum res = FUNC5(FUNC3());

		switch (type_oid)
		{
			case TIMESTAMPOID:
				res = FUNC1(timestamptz_timestamp, res);
				res = FUNC2(timestamp_mi_interval,
										  res,
										  FUNC4(&invl->time_interval));

				return res;
			case TIMESTAMPTZOID:
				res = FUNC2(timestamptz_mi_interval,
										  res,
										  FUNC4(&invl->time_interval));

				return res;
			case DATEOID:
				res = FUNC1(timestamptz_timestamp, res);
				res = FUNC2(timestamp_mi_interval,
										  res,
										  FUNC4(&invl->time_interval));
				res = FUNC1(timestamp_date, res);

				return res;
			default:
				FUNC6(ERROR,
						(FUNC7(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC8("unknown time type OID %d", type_oid)));
		}
	}
	else
	{
		Oid now_func = FUNC9(open_dim);
		FUNC13(now_func, type_oid);

		if (InvalidOid == now_func)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC8("integer_now function must be set")));

		return FUNC12(invl->integer_interval, type_oid, now_func);
	}
	/* suppress compiler warnings on MSVC */
	FUNC10();
	return 0;
}