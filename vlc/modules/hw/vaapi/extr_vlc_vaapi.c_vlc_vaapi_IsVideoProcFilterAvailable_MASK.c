#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ VAProcFilterType ;
typedef  int /*<<< orphan*/  VADisplay ;
typedef  int /*<<< orphan*/  VAContextID ;

/* Variables and functions */
 int VAProcFilterCount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,unsigned int*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  vaQueryVideoProcFilters ; 

int
FUNC1(vlc_object_t *o, VADisplay dpy,
                                     VAContextID ctx, VAProcFilterType filter)
{
    VAProcFilterType    filters[VAProcFilterCount];
    unsigned int        num_filters = VAProcFilterCount;

    FUNC0(o, vaQueryVideoProcFilters, dpy, ctx, filters, &num_filters);
    for (unsigned int i = 0; i < num_filters; ++i)
        if (filter == filters[i])
            return VLC_SUCCESS;
    return VLC_EGENERIC;
error: return VLC_EGENERIC;
}