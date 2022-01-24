#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* p; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_14__ {scalar_t__ p_sys; } ;
typedef  TYPE_3__ filter_t ;
typedef  int /*<<< orphan*/  filter_chain_t ;
struct TYPE_12__ {int i_visible_lines; int i_pitch; int /*<<< orphan*/ * p_pixels; } ;

/* Variables and functions */
 size_t Y_PLANE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const,int const,int,int) ; 

__attribute__((used)) static picture_t *FUNC5( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_filtered_frame =
        FUNC0( (filter_chain_t *)p_filter->p_sys, p_pic );
    picture_t *p_out_frame = FUNC2( &p_pic->format );
    if ( p_out_frame == NULL )
    {
        FUNC3( p_filtered_frame );
        FUNC1( p_filter, "Could not allocate memory for new frame" );
        return NULL;
    }
    const int i_lines = p_filtered_frame->p[Y_PLANE].i_visible_lines;
    const int i_pitch = p_filtered_frame->p[Y_PLANE].i_pitch;
    /* Loop through every pixel in the frame */
    for ( int i_line = 0; i_line < i_lines; i_line++ )
    {
        for ( int i_col = 0; i_col < i_pitch; i_col++ )
        {
            /* Set the new value for the pixel */
            *( p_out_frame->p[Y_PLANE].p_pixels + ((i_pitch * i_line) + i_col) ) =
                FUNC4( p_filtered_frame->p[Y_PLANE].p_pixels,
                       i_pitch, i_lines, i_col, i_line );
        }
    }
    FUNC3( p_filtered_frame );
    return p_out_frame;
}