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
struct TYPE_3__ {scalar_t__ sg_count; int /*<<< orphan*/  sg_name; int /*<<< orphan*/  sg_list; } ;
typedef  TYPE_1__ fmd_serd_eng_t ;
typedef  int /*<<< orphan*/  fmd_serd_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(fmd_serd_eng_t *sgp, fmd_serd_elem_t *sep)
{
	FUNC1(&sgp->sg_list, sep);
	sgp->sg_count--;

	FUNC2("  SERD Engine: discarding %s, %d remaining",
	    sgp->sg_name, (int)sgp->sg_count);

	FUNC0(sep);
}