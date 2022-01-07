
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



__attribute__((used)) static void HorizontalMirror( picture_t *p_pic, picture_t *p_outpic, int i_plane,
                             bool b_top_to_bottom )
{
    uint8_t *p_in, *p_in_end, *p_line_start, *p_line_end, *p_out;

    int i_curr_line = 0;
    int i_max_lines = p_pic->p[i_plane].i_visible_lines;

    p_in = p_pic->p[i_plane].p_pixels;
    p_in_end = p_in + p_pic->p[i_plane].i_visible_lines
        * p_pic->p[i_plane].i_pitch;
    p_out = p_outpic->p[i_plane].p_pixels;

    while( p_in < p_in_end )
    {
        p_line_start = p_in;
        p_line_end = p_in + p_pic->p[i_plane].i_visible_pitch;
        while( p_in < p_line_end )
        {
            uint8_t *p_inverse_line;

            if ( i_curr_line < i_max_lines/2 )
            {
                if ( b_top_to_bottom )
                {
                    *p_out = *p_in;
                }
                else
                {

                    p_inverse_line = p_pic->p[i_plane].p_pixels +
                        ( i_max_lines - i_curr_line - 1 ) * p_pic->p[i_plane].i_pitch;
                    *p_out = *( p_inverse_line + ( p_in - p_line_start ) );
                }
            }
            else
            {
                if ( b_top_to_bottom )
                {

                    p_inverse_line = p_pic->p[i_plane].p_pixels +
                        ( i_max_lines - i_curr_line - 1 ) * p_pic->p[i_plane].i_pitch;
                    *p_out = *( p_inverse_line + ( p_in - p_line_start ) );
                }
                else
                {
                    *p_out = *p_in;
                }
            }
            p_in++;
            p_out++;
        }
        i_curr_line++;
        p_in += p_pic->p[i_plane].i_pitch - p_pic->p[i_plane].i_visible_pitch;
        p_out += p_outpic->p[i_plane].i_pitch
            - p_outpic->p[i_plane].i_visible_pitch;
    }
}
