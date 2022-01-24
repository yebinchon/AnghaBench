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
struct TYPE_3__ {int empty; int /*<<< orphan*/  type_len; int /*<<< orphan*/  type_by_val; void* max; int /*<<< orphan*/  ssup; void* min; } ;
typedef  TYPE_1__ SegmentMetaMinMaxBuilder ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int FUNC0 (void*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(SegmentMetaMinMaxBuilder *builder, Datum val)
{
	int cmp;

	if (builder->empty)
	{
		builder->min = FUNC2(val, builder->type_by_val, builder->type_len);
		builder->max = FUNC2(val, builder->type_by_val, builder->type_len);
		builder->empty = false;
		return;
	}

	cmp = FUNC0(builder->min, false, val, false, &builder->ssup);
	if (cmp > 0)
	{
		if (!builder->type_by_val)
			FUNC3(FUNC1(builder->min));
		builder->min = FUNC2(val, builder->type_by_val, builder->type_len);
	}

	cmp = FUNC0(builder->max, false, val, false, &builder->ssup);
	if (cmp < 0)
	{
		if (!builder->type_by_val)
			FUNC3(FUNC1(builder->max));
		builder->max = FUNC2(val, builder->type_by_val, builder->type_len);
	}
}