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
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 130 
#define  INT4OID 129 
#define  INT8OID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static Datum
FUNC5(int64 value, Oid type)
{
	switch (type)
	{
		case INT2OID:
			return FUNC0(value);
		case INT4OID:
			return FUNC1(value);
		case INT8OID:
			return FUNC2(value);
		default:
			FUNC3(ERROR, "unknown time type OID %d in ts_internal_to_time_value", type);
			FUNC4();
	}
}