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
typedef  int int64 ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int DATEOID ; 
 int /*<<< orphan*/  DEFAULT_CHUNK_TIME_INTERVAL ; 
 int /*<<< orphan*/  DEFAULT_CHUNK_TIME_INTERVAL_ADAPTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 131 
#define  INT4OID 130 
#define  INT8OID 129 
#define  INTERVALOID 128 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int USECS_PER_DAY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64
FUNC13(const char *colname, Oid dimtype, Oid valuetype, Datum value,
							   bool adaptive_chunking)
{
	int64 interval;

	if (!FUNC5(dimtype))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC10("invalid dimension type: \"%s\" must be an integer, date or timestamp",
						colname)));

	if (!FUNC7(valuetype))
	{
		if (FUNC4(dimtype))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC10("integer dimensions require an explicit interval")));

		value = FUNC6(adaptive_chunking ? DEFAULT_CHUNK_TIME_INTERVAL_ADAPTIVE :
												  DEFAULT_CHUNK_TIME_INTERVAL);
		valuetype = INT8OID;
	}

	switch (valuetype)
	{
		case INT2OID:
			interval = FUNC11(dimtype, FUNC0(value));
			break;
		case INT4OID:
			interval = FUNC11(dimtype, FUNC1(value));
			break;
		case INT8OID:
			interval = FUNC11(dimtype, FUNC2(value));
			break;
		case INTERVALOID:
			if (FUNC4(dimtype))
				FUNC8(ERROR,
						(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC10(
							 "invalid interval: must be an integer type for integer dimensions")));

			interval = FUNC12(FUNC3(value));
			break;
		default:
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC10("invalid interval: must be an interval or integer type")));
	}

	if (dimtype == DATEOID && (interval <= 0 || interval % USECS_PER_DAY != 0))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC10("invalid interval: must be multiples of one day")));

	return interval;
}