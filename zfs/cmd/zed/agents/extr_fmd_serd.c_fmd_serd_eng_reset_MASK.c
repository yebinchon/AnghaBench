#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sg_count; int /*<<< orphan*/  sg_flags; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  sg_name; } ;
typedef  TYPE_1__ fmd_serd_eng_t ;

/* Variables and functions */
 int /*<<< orphan*/  FMD_SERD_DIRTY ; 
 int /*<<< orphan*/  FMD_SERD_FIRED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void
FUNC3(fmd_serd_eng_t *sgp)
{
	FUNC2("  SERD Engine: resetting %s", sgp->sg_name);

	while (sgp->sg_count != 0)
		FUNC0(sgp, FUNC1(&sgp->sg_list));

	sgp->sg_flags &= ~FMD_SERD_FIRED;
	sgp->sg_flags |= FMD_SERD_DIRTY;
}