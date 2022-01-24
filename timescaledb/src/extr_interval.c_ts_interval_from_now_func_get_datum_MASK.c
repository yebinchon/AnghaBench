#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ int64 ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INTERVAL_FIELD_OVERFLOW ; 
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 130 
#define  INT4OID 129 
#define  INT8OID 128 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ PG_INT16_MAX ; 
 scalar_t__ PG_INT16_MIN ; 
 scalar_t__ PG_INT32_MAX ; 
 scalar_t__ PG_INT32_MIN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static Datum
FUNC14(int64 interval, Oid time_dim_type, Oid now_func)
{
	Datum now;
	int64 res;

	FUNC0(FUNC4(time_dim_type));

	FUNC13(now_func, time_dim_type);
	now = FUNC8(now_func);

	switch (time_dim_type)
	{
		case INT2OID:
			res = FUNC1(now) - interval;
			if (res < PG_INT16_MIN || res > PG_INT16_MAX)
				FUNC9(ERROR,
						(FUNC10(ERRCODE_INTERVAL_FIELD_OVERFLOW), FUNC11("ts_interval overflow")));
			return FUNC5(res);
		case INT4OID:
			res = FUNC2(now) - interval;
			if (res < PG_INT32_MIN || res > PG_INT32_MAX)
				FUNC9(ERROR,
						(FUNC10(ERRCODE_INTERVAL_FIELD_OVERFLOW), FUNC11("ts_interval overflow")));
			return FUNC6(res);
		case INT8OID:
			res = FUNC3(now) - interval;
			if (res > FUNC3(now))
				FUNC9(ERROR,
						(FUNC10(ERRCODE_INTERVAL_FIELD_OVERFLOW), FUNC11("ts_interval overflow")));
			return FUNC7(res);
		default:
			FUNC12();
	}
}