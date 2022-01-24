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
struct TYPE_3__ {int empty; int has_null; scalar_t__ max; scalar_t__ min; int /*<<< orphan*/  type_by_val; } ;
typedef  TYPE_1__ SegmentMetaMinMaxBuilder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(SegmentMetaMinMaxBuilder *builder)
{
	if (!builder->empty)
	{
		if (!builder->type_by_val)
		{
			FUNC1(FUNC0(builder->min));
			FUNC1(FUNC0(builder->max));
		}
		builder->min = 0;
		builder->max = 0;
	}
	builder->empty = true;
	builder->has_null = false;
}