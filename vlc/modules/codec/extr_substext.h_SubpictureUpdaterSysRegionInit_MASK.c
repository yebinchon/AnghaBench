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
struct TYPE_4__ {scalar_t__ inner_align; int /*<<< orphan*/  align; } ;
typedef  TYPE_1__ substext_updater_region_t ;

/* Variables and functions */
 int /*<<< orphan*/  SUBPICTURE_ALIGN_BOTTOM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(substext_updater_region_t *p_updtregion)
{
    FUNC0(p_updtregion, 0, sizeof(*p_updtregion));
    p_updtregion->align = SUBPICTURE_ALIGN_BOTTOM;
    p_updtregion->inner_align = 0;
}