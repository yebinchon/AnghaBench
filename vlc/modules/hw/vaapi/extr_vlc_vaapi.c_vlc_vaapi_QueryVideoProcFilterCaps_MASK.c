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
typedef  int /*<<< orphan*/  VAProcFilterType ;
typedef  int /*<<< orphan*/  VADisplay ;
typedef  int /*<<< orphan*/  VAContextID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  vaQueryVideoProcFilterCaps ; 

int
FUNC1(vlc_object_t *o, VADisplay dpy,
                                   VAContextID ctx, VAProcFilterType filter,
                                   void *caps, unsigned int *p_num_caps)
{
    FUNC0(o, vaQueryVideoProcFilterCaps, dpy,
            ctx, filter, caps, p_num_caps);
    return VLC_SUCCESS;
error: return VLC_EGENERIC;
}