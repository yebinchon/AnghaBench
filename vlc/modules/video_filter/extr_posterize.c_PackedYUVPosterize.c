
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_6__ {int i_chroma; } ;
struct TYPE_8__ {TYPE_2__* p; TYPE_1__ format; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_7__ {void** p_pixels; int i_visible_lines; int i_pitch; int i_visible_pitch; } ;






 int YuvPosterization (void**,void**,void**,void**,void*,void*,void*,void*,int) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void PackedYUVPosterize( picture_t *p_pic, picture_t *p_outpic, int i_level )
{
    uint8_t *p_in, *p_in_end, *p_line_end, *p_out;
    uint8_t y1, y2, u, v;

    p_in = p_pic->p[0].p_pixels;
    p_in_end = p_in + p_pic->p[0].i_visible_lines
        * p_pic->p[0].i_pitch;
    p_out = p_outpic->p[0].p_pixels;

    while( p_in < p_in_end )
    {
        p_line_end = p_in + p_pic->p[0].i_visible_pitch;
        while( p_in < p_line_end )
        {
            uint8_t posterized_y1, posterized_y2, posterized_u, posterized_v;

            switch( p_pic->format.i_chroma )
            {
                case 131:
                    u = *p_in++;
                    y1 = *p_in++;
                    v = *p_in++;
                    y2 = *p_in++;
                    break;
                case 130:
                    v = *p_in++;
                    y1 = *p_in++;
                    u = *p_in++;
                    y2 = *p_in++;
                    break;
                case 129:
                    y1 = *p_in++;
                    u = *p_in++;
                    y2 = *p_in++;
                    v = *p_in++;
                    break;
                case 128:
                    y1 = *p_in++;
                    v = *p_in++;
                    y2 = *p_in++;
                    u = *p_in++;
                    break;
                default:
                    vlc_assert_unreachable();
            }

            YuvPosterization( &posterized_y1, &posterized_y2, &posterized_u,
                             &posterized_v, y1, y2, u, v, i_level );

            switch( p_pic->format.i_chroma )
            {
                case 131:
                    *p_out++ = posterized_u;
                    *p_out++ = posterized_y1;
                    *p_out++ = posterized_v;
                    *p_out++ = posterized_y2;
                    break;
                case 130:
                    *p_out++ = posterized_v;
                    *p_out++ = posterized_y1;
                    *p_out++ = posterized_u;
                    *p_out++ = posterized_y2;
                    break;
                case 129:
                    *p_out++ = posterized_y1;
                    *p_out++ = posterized_u;
                    *p_out++ = posterized_y2;
                    *p_out++ = posterized_v;
                    break;
                case 128:
                    *p_out++ = posterized_y1;
                    *p_out++ = posterized_v;
                    *p_out++ = posterized_y2;
                    *p_out++ = posterized_u;
                    break;
                default:
                    vlc_assert_unreachable();
            }
        }
        p_in += p_pic->p[0].i_pitch - p_pic->p[0].i_visible_pitch;
        p_out += p_outpic->p[0].i_pitch
            - p_outpic->p[0].i_visible_pitch;
    }
}
