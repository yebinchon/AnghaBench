#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
struct TYPE_4__ {int interval_length; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  DimensionSlice ;
typedef  TYPE_2__ Dimension ;

/* Variables and functions */
 int DIMENSION_SLICE_MAXVALUE ; 
 int DIMENSION_SLICE_MINVALUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static DimensionSlice *
FUNC1(Dimension *dim, int64 value)
{
	int64 range_start, range_end;

	if (value < 0)
	{
		range_end = ((value + 1) / dim->fd.interval_length) * dim->fd.interval_length;

		/* prevent integer underflow */
		if (DIMENSION_SLICE_MINVALUE - range_end > -dim->fd.interval_length)
		{
			range_start = DIMENSION_SLICE_MINVALUE;
		}
		else
		{
			range_start = range_end - dim->fd.interval_length;
		}
	}
	else
	{
		range_start = (value / dim->fd.interval_length) * dim->fd.interval_length;

		/* prevent integer overflow */
		if (DIMENSION_SLICE_MAXVALUE - range_start < dim->fd.interval_length)
		{
			range_end = DIMENSION_SLICE_MAXVALUE;
		}
		else
		{
			range_end = range_start + dim->fd.interval_length;
		}
	}

	return FUNC0(dim->fd.id, range_start, range_end);
}