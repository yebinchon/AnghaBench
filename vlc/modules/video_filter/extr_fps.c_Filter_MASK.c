#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  i_frame_rate_base; int /*<<< orphan*/  i_frame_rate; } ;
struct TYPE_19__ {scalar_t__ date; struct TYPE_19__* p_next; TYPE_1__ format; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_22__ {int /*<<< orphan*/  i_frame_rate_base; int /*<<< orphan*/  i_frame_rate; } ;
struct TYPE_18__ {TYPE_8__ video; } ;
struct TYPE_20__ {TYPE_2__ fmt_out; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_21__ {scalar_t__ i_output_frame_interval; TYPE_3__* p_previous_pic; int /*<<< orphan*/  next_output_pts; } ;
typedef  TYPE_5__ filter_sys_t ;

/* Variables and functions */
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static picture_t *FUNC9( filter_t *p_filter, picture_t *p_picture)
{
    filter_sys_t *p_sys = p_filter->p_sys;
    /* If input picture doesn't have actual valid timestamp,
        we don't really have currently a way to know what else
        to do with it other than drop it for now*/
    if( FUNC8( p_picture->date == VLC_TICK_INVALID) )
    {
        FUNC3( p_filter, "skipping non-dated picture");
        FUNC7( p_picture );
        return NULL;
    }

    p_picture->format.i_frame_rate = p_filter->fmt_out.video.i_frame_rate;
    p_picture->format.i_frame_rate_base = p_filter->fmt_out.video.i_frame_rate_base;

    /* First time we get some valid timestamp, we'll take it as base for output
        later on we retake new timestamp if it has jumped too much */
    if( FUNC8( ( FUNC0( &p_sys->next_output_pts ) == VLC_TICK_INVALID ) ||
                   ( p_picture->date > ( FUNC0( &p_sys->next_output_pts ) + p_sys->i_output_frame_interval ) )
                ) )
    {
        FUNC3( p_filter, "Resetting timestamps" );
        FUNC2( &p_sys->next_output_pts, p_picture->date );
        if( p_sys->p_previous_pic )
            FUNC7( p_sys->p_previous_pic );
        p_sys->p_previous_pic = FUNC5( p_picture );
        FUNC1( &p_sys->next_output_pts, 1 );
        return p_picture;
    }

    /* Check if we can skip input as better should follow */
    if( p_picture->date <
        ( FUNC0( &p_sys->next_output_pts ) - p_sys->i_output_frame_interval ) )
    {
        if( p_sys->p_previous_pic )
            FUNC7( p_sys->p_previous_pic );
        p_sys->p_previous_pic = p_picture;
        return NULL;
    }

    p_sys->p_previous_pic->date = FUNC0( &p_sys->next_output_pts );
    FUNC1( &p_sys->next_output_pts, 1 );

    picture_t *last_pic = p_sys->p_previous_pic;
    /* Duplicating pictures are not that effective and framerate increase
        should be avoided, it's only here as filter should work in that direction too*/
    while( FUNC8( (FUNC0( &p_sys->next_output_pts ) + p_sys->i_output_frame_interval ) < p_picture->date ) )
    {
        picture_t *p_tmp = NULL;
        p_tmp = FUNC6( &p_filter->fmt_out.video );

        FUNC4( p_tmp, p_sys->p_previous_pic);
        p_tmp->date = FUNC0( &p_sys->next_output_pts );
        p_tmp->p_next = NULL;

        last_pic->p_next = p_tmp;
        last_pic = p_tmp;
        FUNC1( &p_sys->next_output_pts, 1 );
    }

    last_pic = p_sys->p_previous_pic;
    p_sys->p_previous_pic = p_picture;
    return last_pic;
}