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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  TimevalInfinity ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  Timestamp ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  DateADT ;

/* Variables and functions */
#define  DATEOID 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_INT64_MAX ; 
 int /*<<< orphan*/  PG_INT64_MIN ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TimevalNegInfinity ; 
 int /*<<< orphan*/  TimevalPosInfinity ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

int64
FUNC8(Datum time_val, Oid type_oid,
									  TimevalInfinity *is_infinite_out)
{
	switch (type_oid)
	{
		case TIMESTAMPOID:
		{
			Timestamp ts = FUNC3(time_val);
			if (FUNC6(ts))
			{
				if (FUNC5(ts))
				{
					if (is_infinite_out != NULL)
						*is_infinite_out = TimevalNegInfinity;
					return PG_INT64_MIN;
				}
				else
				{
					if (is_infinite_out != NULL)
						*is_infinite_out = TimevalPosInfinity;
					return PG_INT64_MAX;
				}
			}

			return FUNC7(time_val, type_oid);
		}
		case TIMESTAMPTZOID:
		{
			TimestampTz ts = FUNC4(time_val);
			if (FUNC6(ts))
			{
				if (FUNC5(ts))
				{
					if (is_infinite_out != NULL)
						*is_infinite_out = TimevalNegInfinity;
					return PG_INT64_MIN;
				}
				else
				{
					if (is_infinite_out != NULL)
						*is_infinite_out = TimevalPosInfinity;
					return PG_INT64_MAX;
				}
			}

			return FUNC7(time_val, type_oid);
		}
		case DATEOID:
		{
			DateADT d = FUNC2(time_val);
			if (FUNC1(d))
			{
				if (FUNC0(d))
				{
					if (is_infinite_out != NULL)
						*is_infinite_out = TimevalNegInfinity;
					return PG_INT64_MIN;
				}
				else
				{
					if (is_infinite_out != NULL)
						*is_infinite_out = TimevalPosInfinity;
					return PG_INT64_MAX;
				}
			}

			return FUNC7(time_val, type_oid);
		}
	}

	return FUNC7(time_val, type_oid);
}