#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_3__ const* vlc_tick_t ;
struct TYPE_20__ {int i_visible_width; int i_visible_height; } ;
typedef  TYPE_3__ video_format_t ;
struct TYPE_21__ {TYPE_6__* p_regions; } ;
typedef  TYPE_5__ ttml_image_updater_sys_t ;
struct TYPE_19__ {int x; int y; } ;
struct TYPE_22__ {int i_flags; TYPE_2__ origin; TYPE_11__* p_pic; struct TYPE_22__* p_next; } ;
typedef  TYPE_6__ ttml_image_updater_region_t ;
struct TYPE_18__ {TYPE_5__* p_sys; } ;
struct TYPE_23__ {TYPE_8__* p_region; TYPE_1__ updater; } ;
typedef  TYPE_7__ subpicture_t ;
struct TYPE_24__ {int i_align; int i_x; int i_y; struct TYPE_24__* p_next; int /*<<< orphan*/  p_picture; } ;
typedef  TYPE_8__ subpicture_region_t ;
struct TYPE_17__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int ORIGIN_X_IS_RATIO ; 
 int ORIGIN_Y_IS_RATIO ; 
 int SUBPICTURE_ALIGN_LEFT ; 
 int SUBPICTURE_ALIGN_TOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(subpicture_t *p_spu,
                                const video_format_t *p_fmt_src,
                                const video_format_t *p_fmt_dst,
                                vlc_tick_t i_ts)
{
    FUNC0(p_fmt_src); FUNC0(p_fmt_dst);
    FUNC0(i_ts);
    ttml_image_updater_sys_t *p_sys = p_spu->updater.p_sys;
    subpicture_region_t **pp_last_region = &p_spu->p_region;

    /* !WARN: SMPTE-TT image profile requires no scaling, and even it
              would, it does not store the necessary original pic size */

    for(ttml_image_updater_region_t *p_updtregion = p_sys->p_regions;
                                     p_updtregion; p_updtregion = p_updtregion->p_next)
    {
        subpicture_region_t *r = FUNC4(&p_updtregion->p_pic->format);
        if (!r)
            return;
        FUNC2(r->p_picture);
        r->p_picture = FUNC1(p_updtregion->p_pic);
        if(!r->p_picture)
        {
            FUNC3(r);
            return;
        }

        r->i_align = SUBPICTURE_ALIGN_LEFT|SUBPICTURE_ALIGN_TOP;

        if( p_updtregion->i_flags & ORIGIN_X_IS_RATIO )
            r->i_x = p_updtregion->origin.x * p_fmt_dst->i_visible_width;
        else
            r->i_x = p_updtregion->origin.x;

        if( p_updtregion->i_flags & ORIGIN_Y_IS_RATIO )
            r->i_y = p_updtregion->origin.y * p_fmt_dst->i_visible_height;
        else
            r->i_y = p_updtregion->origin.y;

        *pp_last_region = r;
        pp_last_region = &r->p_next;
    }
}