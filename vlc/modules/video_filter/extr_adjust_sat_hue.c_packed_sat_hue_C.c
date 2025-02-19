
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int i_chroma; } ;
struct TYPE_8__ {TYPE_2__* p; TYPE_1__ format; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_7__ {int i_visible_lines; int i_pitch; int i_visible_pitch; int * p_pixels; } ;


 int ADJUST_8_TIMES (int ) ;
 scalar_t__ GetPackedYuvOffsets (int ,int*,int*,int*) ;
 int PACKED_WRITE_UV () ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;

int packed_sat_hue_C( picture_t * p_pic, picture_t * p_outpic, int i_sin,
                      int i_cos, int i_sat, int i_x, int i_y )
{
    uint8_t *p_in, *p_in_v, *p_in_end, *p_line_end;
    uint8_t *p_out, *p_out_v;

    int i_y_offset, i_u_offset, i_v_offset;
    int i_visible_lines, i_pitch, i_visible_pitch;


    if ( GetPackedYuvOffsets( p_pic->format.i_chroma, &i_y_offset,
                              &i_u_offset, &i_v_offset ) != VLC_SUCCESS )
        return VLC_EGENERIC;

    i_visible_lines = p_pic->p->i_visible_lines;
    i_pitch = p_pic->p->i_pitch;
    i_visible_pitch = p_pic->p->i_visible_pitch;

    p_in = p_pic->p->p_pixels + i_u_offset;
    p_in_v = p_pic->p->p_pixels + i_v_offset;
    p_in_end = p_in + i_visible_lines * i_pitch - 8 * 4;

    p_out = p_outpic->p->p_pixels + i_u_offset;
    p_out_v = p_outpic->p->p_pixels + i_v_offset;

    uint8_t i_u, i_v;

    for( ; p_in < p_in_end ; )
    {
        p_line_end = p_in + i_visible_pitch - 8 * 4;

        for( ; p_in < p_line_end ; )
        {

            ADJUST_8_TIMES( PACKED_WRITE_UV() );
        }

        p_line_end += 8 * 4;

        for( ; p_in < p_line_end ; )
        {
            PACKED_WRITE_UV();
        }

        p_in += i_pitch - i_visible_pitch;
        p_in_v += i_pitch - i_visible_pitch;
        p_out += i_pitch - i_visible_pitch;
        p_out_v += i_pitch - i_visible_pitch;
    }

    return VLC_SUCCESS;
}
