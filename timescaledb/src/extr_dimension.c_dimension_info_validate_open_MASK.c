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
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  adaptive_chunking; int /*<<< orphan*/  interval_datum; int /*<<< orphan*/  interval_type; int /*<<< orphan*/ * colname; int /*<<< orphan*/  interval; int /*<<< orphan*/  partitioning_func; int /*<<< orphan*/  coltype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DimensionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIMENSION_TYPE_OPEN ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(DimensionInfo *info)
{
	Oid dimtype = info->coltype;

	FUNC0(info->type == DIMENSION_TYPE_OPEN);

	if (FUNC2(info->partitioning_func))
	{
		if (!FUNC9(info->partitioning_func, info->type, info->coltype))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC7("invalid partitioning function"),
					 FUNC6("A valid partitioning function for open (time) dimensions must be "
							 "IMMUTABLE, "
							 "take the column type as input, and return an integer or "
							 "timestamp type.")));

		dimtype = FUNC8(info->partitioning_func);
	}

	info->interval = FUNC3(FUNC1(*info->colname),
													dimtype,
													info->interval_type,
													info->interval_datum,
													info->adaptive_chunking);
}