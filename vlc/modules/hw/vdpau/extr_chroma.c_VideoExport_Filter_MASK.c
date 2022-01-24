#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ vlc_vdp_yuv_getter_t ;
struct TYPE_17__ {int /*<<< orphan*/ * context; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_18__ {TYPE_1__* p_sys; } ;
typedef  TYPE_3__ filter_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t *FUNC5(filter_t *filter, picture_t *src)
{
    vlc_vdp_yuv_getter_t *sys = filter->p_sys;

    if (FUNC4(src->context == NULL))
    {
        FUNC2(filter, "corrupt VDPAU video surface %p", src);
        FUNC3(src);
        return NULL;
    }

    picture_t *dst = FUNC1(filter);
    if (dst == NULL)
        return NULL;

    return FUNC0(filter, src, dst, sys->format);
}