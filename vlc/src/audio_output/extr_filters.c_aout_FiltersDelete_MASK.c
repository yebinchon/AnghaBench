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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int count; scalar_t__ clock; int /*<<< orphan*/ ** tab; int /*<<< orphan*/ * resampler; } ;
typedef  TYPE_1__ aout_filters_t ;

/* Variables and functions */
 int /*<<< orphan*/  VisualizationCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4 (vlc_object_t *obj, aout_filters_t *filters)
{
    if (filters->resampler != NULL)
        FUNC0 (&filters->resampler, 1);
    FUNC0 (filters->tab, filters->count);
    FUNC2(obj, "visual", VisualizationCallback, NULL);
    if (filters->clock)
        FUNC3(filters->clock);
    FUNC1 (filters);
}