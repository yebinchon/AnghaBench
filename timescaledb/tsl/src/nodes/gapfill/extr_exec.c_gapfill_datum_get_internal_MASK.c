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
#define  DATEOID 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 132 
#define  INT4OID 131 
#define  INT8OID 130 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int64
FUNC8(Datum value, Oid type)
{
	switch (type)
	{
		case INT2OID:
			return FUNC0(value);
		case DATEOID:
		case INT4OID:
			return FUNC1(value);
		case TIMESTAMPOID:
		case TIMESTAMPTZOID:
		case INT8OID:
			return FUNC2(value);
		default:

			/*
			 * should never happen since time_bucket_gapfill is not defined
			 * for other datatypes
			 */
			FUNC3(ERROR,
					(FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC5("unsupported datatype for time_bucket_gapfill: %s",
							FUNC6(type))));
			FUNC7();
			break;
	}
}