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
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/ * colname; int /*<<< orphan*/  num_slices; int /*<<< orphan*/  num_slices_is_set; int /*<<< orphan*/  coltype; int /*<<< orphan*/  partitioning_func; } ;
typedef  TYPE_1__ DimensionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIMENSION_TYPE_CLOSED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_INT16_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(DimensionInfo *info)
{
	FUNC0(info->type == DIMENSION_TYPE_CLOSED);

	if (!FUNC3(info->partitioning_func))
		info->partitioning_func = FUNC8();
	else if (!FUNC9(info->partitioning_func, info->type, info->coltype))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_FUNCTION_DEFINITION),
				 FUNC7("invalid partitioning function"),
				 FUNC6("A valid partitioning function for closed (space) dimensions must be "
						 "IMMUTABLE "
						 "and have the signature (anyelement) -> integer.")));

	if (!info->num_slices_is_set || !FUNC1(info->num_slices))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC7("invalid number of partitions for dimension \"%s\"",
						FUNC2(*info->colname)),
				 FUNC6("A closed (space) dimension must specify between 1 and %d partitions.",
						 PG_INT16_MAX)));
}