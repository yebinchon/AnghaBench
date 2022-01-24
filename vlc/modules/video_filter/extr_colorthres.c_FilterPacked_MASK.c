#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_19__ {TYPE_3__* p; } ;
typedef  TYPE_4__ picture_t ;
struct TYPE_16__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_17__ {TYPE_1__ video; } ;
struct TYPE_20__ {TYPE_2__ fmt_in; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ filter_t ;
struct TYPE_21__ {int /*<<< orphan*/  i_color; int /*<<< orphan*/  i_satthres; int /*<<< orphan*/  i_simthres; } ;
typedef  TYPE_6__ filter_sys_t ;
struct TYPE_18__ {int i_visible_lines; int* p_pixels; int i_pitch; int i_visible_pitch; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_4__*,TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int) ; 
 scalar_t__ FUNC3 (int,int,int,int,int,int,int) ; 
 int VLC_EGENERIC ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static picture_t *FUNC7( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;
    filter_sys_t *p_sys = p_filter->p_sys;
    int i_simthres = FUNC4( &p_sys->i_simthres );
    int i_satthres = FUNC4( &p_sys->i_satthres );
    int i_color = FUNC4( &p_sys->i_color );

    if( !p_pic ) return NULL;

    p_outpic = FUNC5( p_filter );
    if( !p_outpic )
    {
        FUNC6( p_pic );
        return NULL;
    }

    int i_y_offset, i_u_offset, i_v_offset;
    int i_ret = FUNC1( p_filter->fmt_in.video.i_chroma,
                                     &i_y_offset, &i_u_offset, &i_v_offset );
    if( i_ret == VLC_EGENERIC )
    {
        FUNC6( p_pic );
        return NULL;
    }

    /*
     * Copy Y and do the U and V planes
     */
    int refu, refv, reflength;
    FUNC2( &refu, &refv, &reflength, i_color );

    for( int y = 0; y < p_pic->p->i_visible_lines; y++ )
    {
        uint8_t *p_src = &p_pic->p->p_pixels[y * p_pic->p->i_pitch];
        uint8_t *p_dst = &p_outpic->p->p_pixels[y * p_outpic->p->i_pitch];

        for( int x = 0; x < p_pic->p->i_visible_pitch / 4; x++ )
        {
            p_dst[i_y_offset + 0] = p_src[i_y_offset + 0];
            p_dst[i_y_offset + 2] = p_src[i_y_offset + 2];

            if( FUNC3( p_src[i_u_offset] - 0x80, p_src[i_v_offset] - 0x80,
                           refu, refv, reflength,
                           i_satthres, i_simthres ) )
            {
                p_dst[i_u_offset] = p_src[i_u_offset];
                p_dst[i_v_offset] = p_src[i_v_offset];
            }
            else
            {
                p_dst[i_u_offset] = 0x80;
                p_dst[i_v_offset] = 0x80;
            }

            p_dst += 4;
            p_src += 4;
        }
    }

    return FUNC0( p_outpic, p_pic );
}