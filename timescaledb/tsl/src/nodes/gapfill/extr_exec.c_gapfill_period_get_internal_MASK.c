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
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DATEOID 133 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 132 
#define  INT4OID 131 
#define  INT8OID 130 
 int INTERVALOID ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int USECS_PER_DAY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static inline int64
FUNC11(Oid timetype, Oid argtype, Datum arg)
{
	switch (timetype)
	{
		case DATEOID:
			FUNC0(INTERVALOID == argtype);
			return FUNC9(FUNC4(arg)) / USECS_PER_DAY;
			break;
		case TIMESTAMPOID:
		case TIMESTAMPTZOID:
			FUNC0(INTERVALOID == argtype);
			return FUNC9(FUNC4(arg));
			break;
		case INT2OID:
			FUNC0(INT2OID == argtype);
			return FUNC1(arg);
		case INT4OID:
			FUNC0(INT4OID == argtype);
			return FUNC2(arg);
		case INT8OID:
			FUNC0(INT8OID == argtype);
			return FUNC3(arg);
		default:

			/*
			 * should never happen since time_bucket_gapfill is not defined
			 * for other datatypes
			 */
			FUNC5(ERROR,
					(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC7("unsupported datatype for time_bucket_gapfill: %s",
							FUNC8(timetype))));
			FUNC10();
			break;
	}
}