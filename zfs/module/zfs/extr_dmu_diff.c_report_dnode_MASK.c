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
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ ddr_type; scalar_t__ ddr_last; scalar_t__ ddr_first; } ;
struct diffarg {int da_err; TYPE_1__ da_ddr; } ;
struct TYPE_5__ {scalar_t__ dn_type; } ;
typedef  TYPE_2__ dnode_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DDR_INUSE ; 
 scalar_t__ DMU_OT_NONE ; 
 int FUNC1 (struct diffarg*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct diffarg*) ; 

__attribute__((used)) static int
FUNC3(struct diffarg *da, uint64_t object, dnode_phys_t *dnp)
{
	FUNC0(dnp != NULL);
	if (dnp->dn_type == DMU_OT_NONE)
		return (FUNC1(da, object, object));

	if (da->da_ddr.ddr_type != DDR_INUSE ||
	    object != da->da_ddr.ddr_last + 1) {
		if (FUNC2(da) != 0)
			return (da->da_err);
		da->da_ddr.ddr_type = DDR_INUSE;
		da->da_ddr.ddr_first = da->da_ddr.ddr_last = object;
		return (0);
	}
	da->da_ddr.ddr_last = object;
	return (0);
}