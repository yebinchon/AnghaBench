
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


 void* POSTERIZE_PIXEL (int ,int) ;

__attribute__((used)) static void RVPosterize( picture_t *p_pic, picture_t *p_outpic,
                                 bool rv32, int level )
{
    uint8_t *p_in, *p_in_end, *p_line_end, *p_out, pixel;

    p_in = p_pic->p[0].p_pixels;
    p_in_end = p_in + p_pic->p[0].i_visible_lines
        * p_pic->p[0].i_pitch;
    p_out = p_outpic->p[0].p_pixels;

    while( p_in < p_in_end )
    {
        p_line_end = p_in + p_pic->p[0].i_visible_pitch;
        while( p_in < p_line_end )
        {
            pixel = *p_in++;
            *p_out++ = POSTERIZE_PIXEL( pixel, level );
            pixel = *p_in++;
            *p_out++ = POSTERIZE_PIXEL( pixel, level );
            pixel = *p_in++;
            *p_out++ = POSTERIZE_PIXEL( pixel, level );

            if ( rv32 )
            {
                pixel = *p_in++;
                *p_out++ = POSTERIZE_PIXEL( pixel, level );
            }
        }
        p_in += p_pic->p[0].i_pitch - p_pic->p[0].i_visible_pitch;
        p_out += p_outpic->p[0].i_pitch
            - p_outpic->p[0].i_visible_pitch;
    }
}
