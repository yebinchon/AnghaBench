
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_6__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_5__ {int i_visible_lines; int i_pitch; int i_visible_pitch; int * p_pixels; } ;



__attribute__((used)) static void RV32VerticalMirror( picture_t *p_pic, picture_t *p_outpic,
                                 int i_plane, bool b_left_to_right )
{
    uint8_t *p_in, *p_in_end, *p_out;

    p_in = p_pic->p[i_plane].p_pixels;
    p_in_end = p_in + p_pic->p[i_plane].i_visible_lines
        * p_pic->p[i_plane].i_pitch;
    p_out = p_outpic->p[i_plane].p_pixels;

    while( p_in < p_in_end )
    {
        uint32_t *p_in32, *p_out32, *p_line_start32, *p_line_end32;
        p_in32 = (uint32_t*) p_in;
        p_out32 = (uint32_t*) p_out;
        p_line_start32 = p_in32;
        p_line_end32 = (uint32_t*) ( p_in + p_pic->p[i_plane].i_visible_pitch) ;

        while( p_in32 < p_line_end32 )
        {

            if ( p_in32 < p_line_start32 + ( p_line_end32 - p_line_start32 ) / 2 )
            {
                if ( b_left_to_right )
                {
                    *p_out32++ = *p_in32++;
                }
                else
                {
                    uint32_t *p_pixel32 = p_line_end32 - ( p_in32 - p_line_start32 );
                    p_in32++;
                    *p_out++ = *p_pixel32;
                }
            }
            else
            {
                if ( b_left_to_right )
                {
                    uint32_t *p_pixel32 = p_line_end32 - ( p_in32 - p_line_start32 );
                    p_in32++;
                    *p_out++ = *p_pixel32;
                }
                else
                {
                    *p_out32++ = *p_in32++;
                }
            }
        }
        p_in = (uint8_t*) p_in32;
        p_out = (uint8_t*) p_out32;
        p_in += p_pic->p[i_plane].i_pitch - p_pic->p[i_plane].i_visible_pitch;
        p_out += p_outpic->p[i_plane].i_pitch
            - p_outpic->p[i_plane].i_visible_pitch;
    }
}
