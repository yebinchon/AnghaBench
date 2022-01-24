#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ ddr_type; scalar_t__ ddr_last; scalar_t__ ddr_first; } ;
struct diffarg {int da_err; TYPE_1__ da_ddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DDR_FREE ; 
 scalar_t__ FUNC1 (struct diffarg*) ; 

__attribute__((used)) static int
FUNC2(struct diffarg *da, uint64_t first, uint64_t last)
{
	FUNC0(first <= last);
	if (da->da_ddr.ddr_type != DDR_FREE ||
	    first != da->da_ddr.ddr_last + 1) {
		if (FUNC1(da) != 0)
			return (da->da_err);
		da->da_ddr.ddr_type = DDR_FREE;
		da->da_ddr.ddr_first = first;
		da->da_ddr.ddr_last = last;
		return (0);
	}
	da->da_ddr.ddr_last = last;
	return (0);
}