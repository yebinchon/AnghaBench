
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_5__ {int i_visible_lines; int i_pitch; int i_visible_pitch; int * p_pixels; } ;


 int ADJUST_8_TIMES (int ) ;
 int PLANAR_WRITE_UV_CLIP (int) ;
 size_t U_PLANE ;
 int VLC_SUCCESS ;
 size_t V_PLANE ;

int planar_sat_hue_clip_C( picture_t * p_pic, picture_t * p_outpic, int i_sin, int i_cos,
                         int i_sat, int i_x, int i_y )
{
    uint8_t *p_in, *p_in_v, *p_in_end, *p_line_end;
    uint8_t *p_out, *p_out_v;

    p_in = p_pic->p[U_PLANE].p_pixels;
    p_in_v = p_pic->p[V_PLANE].p_pixels;
    p_in_end = p_in + p_pic->p[U_PLANE].i_visible_lines
                      * p_pic->p[U_PLANE].i_pitch - 8;

    p_out = p_outpic->p[U_PLANE].p_pixels;
    p_out_v = p_outpic->p[V_PLANE].p_pixels;

    uint8_t i_u, i_v;

    for( ; p_in < p_in_end ; )
    {
        p_line_end = p_in + p_pic->p[U_PLANE].i_visible_pitch - 8;

        for( ; p_in < p_line_end ; )
        {

            ADJUST_8_TIMES( PLANAR_WRITE_UV_CLIP( 8 ) );
        }

        p_line_end += 8;

        for( ; p_in < p_line_end ; )
        {
            PLANAR_WRITE_UV_CLIP( 8 );
        }

        p_in += p_pic->p[U_PLANE].i_pitch
                - p_pic->p[U_PLANE].i_visible_pitch;
        p_in_v += p_pic->p[V_PLANE].i_pitch
                - p_pic->p[V_PLANE].i_visible_pitch;
        p_out += p_outpic->p[U_PLANE].i_pitch
                - p_outpic->p[U_PLANE].i_visible_pitch;
        p_out_v += p_outpic->p[V_PLANE].i_pitch
                    - p_outpic->p[V_PLANE].i_visible_pitch;
    }

    return VLC_SUCCESS;
}
