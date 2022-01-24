#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  float vlc_tick_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_19__ {int /*<<< orphan*/  video; } ;
struct TYPE_18__ {int /*<<< orphan*/  video; } ;
struct TYPE_21__ {int /*<<< orphan*/  p_module; int /*<<< orphan*/  (* pf_video_blend ) (TYPE_4__*,TYPE_10__*,TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_22__ {int b_done; int i_loops; TYPE_11__* p_blend_image; int /*<<< orphan*/  i_alpha; TYPE_10__* p_base_image; } ;
typedef  TYPE_5__ filter_sys_t ;
struct TYPE_20__ {float i_visible_pitch; float i_visible_lines; } ;
struct TYPE_17__ {TYPE_3__* p; int /*<<< orphan*/  format; } ;
struct TYPE_16__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 float CLOCK_FREQ ; 
 size_t Y_PLANE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,float,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 float FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_10__*,TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 float FUNC8 () ; 

__attribute__((used)) static picture_t *FUNC9( filter_t *p_filter, picture_t *p_pic )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    filter_t *p_blend;

    if( p_sys->b_done )
        return p_pic;

    p_blend = FUNC6( p_filter, sizeof(filter_t) );
    if( !p_blend )
    {
        FUNC3( p_pic );
        return NULL;
    }
    p_blend->fmt_out.video = p_sys->p_base_image->format;
    p_blend->fmt_in.video = p_sys->p_blend_image->format;
    p_blend->p_module = FUNC0( p_blend, "video blending", NULL, false );
    if( !p_blend->p_module )
    {
        FUNC3( p_pic );
        FUNC7(p_blend);
        return NULL;
    }

    vlc_tick_t time = FUNC8();
    for( int i_iter = 0; i_iter < p_sys->i_loops; ++i_iter )
    {
        p_blend->pf_video_blend( p_blend,
                                 p_sys->p_base_image, p_sys->p_blend_image,
                                 0, 0, p_sys->i_alpha );
    }
    time = FUNC8() - time;

    FUNC2( p_filter, "Blended %d images in %f sec", p_sys->i_loops,
              FUNC4(time) );
    FUNC2( p_filter, "Speed is: %f images/second, %f pixels/second",
              (float) p_sys->i_loops / time * CLOCK_FREQ,
              (float) p_sys->i_loops / time * CLOCK_FREQ *
                  p_sys->p_blend_image->p[Y_PLANE].i_visible_pitch *
                  p_sys->p_blend_image->p[Y_PLANE].i_visible_lines );

    FUNC1( p_blend, p_blend->p_module );

    FUNC7(p_blend);

    p_sys->b_done = true;
    return p_pic;
}