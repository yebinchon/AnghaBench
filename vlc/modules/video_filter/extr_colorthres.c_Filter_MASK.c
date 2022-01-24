#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_15__ {TYPE_4__* p; } ;
typedef  TYPE_1__ picture_t ;
struct TYPE_16__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_17__ {int /*<<< orphan*/  i_color; int /*<<< orphan*/  i_satthres; int /*<<< orphan*/  i_simthres; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_18__ {int i_visible_lines; void** p_pixels; int i_pitch; int i_visible_pitch; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int) ; 
 scalar_t__ FUNC2 (void*,void*,int,int,int,int,int) ; 
 size_t U_PLANE ; 
 size_t V_PLANE ; 
 size_t Y_PLANE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_4__*) ; 

__attribute__((used)) static picture_t *FUNC7( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;
    filter_sys_t *p_sys = p_filter->p_sys;
    int i_simthres = FUNC3( &p_sys->i_simthres );
    int i_satthres = FUNC3( &p_sys->i_satthres );
    int i_color = FUNC3( &p_sys->i_color );

    if( !p_pic ) return NULL;

    p_outpic = FUNC4( p_filter );
    if( !p_outpic )
    {
        FUNC5( p_pic );
        return NULL;
    }

    /* Copy the Y plane */
    FUNC6( &p_outpic->p[Y_PLANE], &p_pic->p[Y_PLANE] );

    /*
     * Do the U and V planes
     */
    int refu, refv, reflength;
    FUNC1( &refu, &refv, &reflength, i_color );

    for( int y = 0; y < p_pic->p[U_PLANE].i_visible_lines; y++ )
    {
        uint8_t *p_src_u = &p_pic->p[U_PLANE].p_pixels[y * p_pic->p[U_PLANE].i_pitch];
        uint8_t *p_src_v = &p_pic->p[V_PLANE].p_pixels[y * p_pic->p[V_PLANE].i_pitch];
        uint8_t *p_dst_u = &p_outpic->p[U_PLANE].p_pixels[y * p_outpic->p[U_PLANE].i_pitch];
        uint8_t *p_dst_v = &p_outpic->p[V_PLANE].p_pixels[y * p_outpic->p[V_PLANE].i_pitch];

        for( int x = 0; x < p_pic->p[U_PLANE].i_visible_pitch; x++ )
        {
            if( FUNC2( *p_src_u - 0x80, *p_src_v - 0x80,
                           refu, refv, reflength,
                           i_satthres, i_simthres ) )

            {
                *p_dst_u++ = *p_src_u;
                *p_dst_v++ = *p_src_v;
            }
            else
            {
                *p_dst_u++ = 0x80;
                *p_dst_v++ = 0x80;
            }
            p_src_u++;
            p_src_v++;
        }
    }

    return FUNC0( p_outpic, p_pic );
}