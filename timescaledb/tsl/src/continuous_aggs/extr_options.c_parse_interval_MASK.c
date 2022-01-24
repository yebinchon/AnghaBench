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
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DATEOID 133 
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 132 
#define  INT4OID 131 
#define  INT8OID 130 
 int /*<<< orphan*/  INTERVALOID ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PG_INT16_MAX ; 
 int /*<<< orphan*/  PG_INT16_MIN ; 
 int /*<<< orphan*/  PG_INT32_MAX ; 
 int /*<<< orphan*/  PG_INT32_MIN ; 
 int /*<<< orphan*/  PG_INT64_MAX ; 
 int /*<<< orphan*/  PG_INT64_MIN ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64
FUNC8(char *value, Oid column_type, const char *option_name)
{
	Datum interval;
	Oid in_fn;
	Oid typIOParam;

	switch (column_type)
	{
		case INT2OID:
			return FUNC5(value, PG_INT16_MIN, PG_INT16_MAX, option_name);
		case INT4OID:
			return FUNC5(value, PG_INT32_MIN, PG_INT32_MAX, option_name);
		case INT8OID:
			return FUNC5(value, PG_INT64_MIN, PG_INT64_MAX, option_name);
		case TIMESTAMPTZOID:
		case TIMESTAMPOID:
		case DATEOID:
			FUNC4(INTERVALOID, &in_fn, &typIOParam);
			FUNC0(FUNC2(in_fn));
			interval = FUNC1(in_fn, value, typIOParam, -1);
			return FUNC7(interval, INTERVALOID);
		default:
			FUNC3(ERROR, "unknown time type when parsing timescaledb.%s", option_name);
			FUNC6();
	}
}