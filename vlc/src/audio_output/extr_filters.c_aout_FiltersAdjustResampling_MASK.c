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
struct TYPE_3__ {scalar_t__ resampling; int /*<<< orphan*/ * resampler; } ;
typedef  TYPE_1__ aout_filters_t ;

/* Variables and functions */

bool FUNC0 (aout_filters_t *filters, int adjust)
{
    if (filters->resampler == NULL)
        return false;

    if (adjust)
        filters->resampling += adjust;
    else
        filters->resampling = 0;
    return filters->resampling != 0;
}