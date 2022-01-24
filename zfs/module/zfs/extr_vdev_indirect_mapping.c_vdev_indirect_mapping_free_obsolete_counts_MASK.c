#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* vim_phys; } ;
typedef  TYPE_2__ vdev_indirect_mapping_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int vimp_num_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

extern void
FUNC3(vdev_indirect_mapping_t *vim,
    uint32_t *counts)
{
	FUNC0(FUNC1(vim));

	FUNC2(counts, vim->vim_phys->vimp_num_entries * sizeof (uint32_t));
}