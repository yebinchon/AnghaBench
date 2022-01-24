#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int const i_visible_height; int const i_visible_width; } ;
typedef  TYPE_3__ video_format_t ;
struct TYPE_29__ {scalar_t__ date; TYPE_3__ format; } ;
typedef  TYPE_4__ picture_t ;
struct TYPE_30__ {int i_alpha; TYPE_4__* p_pic; } ;
typedef  TYPE_5__ logo_t ;
struct TYPE_31__ {scalar_t__ i_next_pic; int i_alpha; } ;
typedef  TYPE_6__ logo_list_t ;
struct TYPE_26__ {int i_visible_width; int i_visible_height; } ;
struct TYPE_27__ {TYPE_1__ video; } ;
struct TYPE_32__ {TYPE_2__ fmt_out; TYPE_8__* p_sys; } ;
typedef  TYPE_7__ filter_t ;
struct TYPE_33__ {int i_pos; int i_pos_y; int i_pos_x; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_blend; TYPE_6__ list; } ;
typedef  TYPE_8__ filter_sys_t ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_6__*) ; 
 TYPE_5__* FUNC1 (TYPE_6__*,scalar_t__) ; 
 int SUBPICTURE_ALIGN_BOTTOM ; 
 int SUBPICTURE_ALIGN_LEFT ; 
 int SUBPICTURE_ALIGN_RIGHT ; 
 int SUBPICTURE_ALIGN_TOP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,int,TYPE_4__ const*,int const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int const,int const,TYPE_3__ const*) ; 
 TYPE_4__* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char*,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC11( filter_t *p_filter, picture_t *p_src )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    logo_list_t *p_list = &p_sys->list;

    picture_t *p_dst = FUNC4( p_filter );
    if( !p_dst )
        goto exit;

    FUNC7( p_dst, p_src );

    /* */
    FUNC9( &p_sys->lock );

    logo_t *p_logo;
    if( p_list->i_next_pic < p_src->date )
        p_logo = FUNC1( p_list, p_src->date );
    else
        p_logo = FUNC0( p_list );

    /* */
    const picture_t *p_pic = p_logo->p_pic;
    if( p_pic )
    {
        const video_format_t *p_fmt = &p_pic->format;
        const int i_dst_w = p_filter->fmt_out.video.i_visible_width;
        const int i_dst_h = p_filter->fmt_out.video.i_visible_height;

        if( p_sys->i_pos )
        {
            if( p_sys->i_pos & SUBPICTURE_ALIGN_BOTTOM )
            {
                p_sys->i_pos_y = i_dst_h - p_fmt->i_visible_height;
            }
            else if ( !(p_sys->i_pos & SUBPICTURE_ALIGN_TOP) )
            {
                p_sys->i_pos_y = ( i_dst_h - p_fmt->i_visible_height ) / 2;
            }
            else
            {
                p_sys->i_pos_y = 0;
            }

            if( p_sys->i_pos & SUBPICTURE_ALIGN_RIGHT )
            {
                p_sys->i_pos_x = i_dst_w - p_fmt->i_visible_width;
            }
            else if ( !(p_sys->i_pos & SUBPICTURE_ALIGN_LEFT) )
            {
                p_sys->i_pos_x = ( i_dst_w - p_fmt->i_visible_width ) / 2;
            }
            else
            {
                p_sys->i_pos_x = 0;
            }
        }

        if( p_sys->i_pos_x < 0 || p_sys->i_pos_y < 0 )
        {
            FUNC6( p_filter,
                "logo(%ix%i) doesn't fit into video(%ix%i)",
                p_fmt->i_visible_width, p_fmt->i_visible_height,
                i_dst_w,i_dst_h );
            p_sys->i_pos_x = (p_sys->i_pos_x > 0) ? p_sys->i_pos_x : 0;
            p_sys->i_pos_y = (p_sys->i_pos_y > 0) ? p_sys->i_pos_y : 0;
        }

        /* */
        const int i_alpha = p_logo->i_alpha != -1 ? p_logo->i_alpha : p_list->i_alpha;
        if( FUNC3( p_sys->p_blend, i_dst_w, i_dst_h, p_fmt ) ||
            FUNC2( p_sys->p_blend, p_dst, p_sys->i_pos_x, p_sys->i_pos_y,
                          p_pic, i_alpha ) )
        {
            FUNC5( p_filter, "failed to blend a picture" );
        }
    }
    FUNC10( &p_sys->lock );

exit:
    FUNC8( p_src );
    return p_dst;
}