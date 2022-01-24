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
struct TYPE_3__ {int type_len; scalar_t__ max; scalar_t__ empty; } ;
typedef  TYPE_1__ SegmentMetaMinMaxBuilder ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

Datum
FUNC5(SegmentMetaMinMaxBuilder *builder)
{
	if (builder->empty)
		FUNC3(ERROR, "trying to get max from an empty builder");
	if (builder->type_len == -1)
	{
		Datum unpacked = FUNC2(FUNC1(builder->max));
		if (builder->max != unpacked)
			FUNC4(FUNC0(builder->max));
		builder->max = unpacked;
	}
	return builder->max;
}