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
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DATEOID 133 
#define  INT2OID 132 
#define  INT4OID 131 
#define  INT8OID 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 

__attribute__((used)) static inline Datum
FUNC4(int64 value, Oid type)
{
	switch (type)
	{
		case INT2OID:
			return FUNC1(value);
		case DATEOID:
		case INT4OID:
			return FUNC2(value);
		case TIMESTAMPOID:
		case TIMESTAMPTZOID:
		case INT8OID:
			return FUNC3(value);
		default:

			/*
			 * should never happen since time_bucket_gapfill is not defined
			 * for other datatypes
			 */
			FUNC0(false);
			return FUNC3(0);
	}
}