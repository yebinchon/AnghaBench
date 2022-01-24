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
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  DATEOID 130 
 int /*<<< orphan*/  DATEVAL_NOBEGIN ; 
 int /*<<< orphan*/  DT_NOBEGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_INT64_MIN ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Datum
FUNC4(Oid type)
{
	switch (type)
	{
		case TIMESTAMPOID:
			return FUNC1(DT_NOBEGIN);
		case TIMESTAMPTZOID:
			return FUNC2(DT_NOBEGIN);
		case DATEOID:
			return FUNC0(DATEVAL_NOBEGIN);
		default:
			return FUNC3(PG_INT64_MIN, type);
	}
}