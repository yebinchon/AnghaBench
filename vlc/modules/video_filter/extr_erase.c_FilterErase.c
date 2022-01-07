
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {scalar_t__ i_chroma; } ;
struct TYPE_15__ {int i_planes; TYPE_7__* p; TYPE_2__ format; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_16__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_17__ {int i_x; int i_y; TYPE_3__* p_mask; } ;
typedef TYPE_6__ filter_sys_t ;
struct TYPE_18__ {int i_pitch; int i_visible_pitch; int i_visible_lines; int* p_pixels; } ;
struct TYPE_14__ {int A_PITCH; int* A_PIXELS; TYPE_1__* p; } ;
struct TYPE_12__ {int i_visible_pitch; int i_visible_lines; } ;


 size_t A_PLANE ;
 scalar_t__ VLC_CODEC_I422 ;
 scalar_t__ VLC_CODEC_J422 ;
 int __MAX (int,int) ;
 int __MIN (int const,int) ;
 int plane_CopyPixels (TYPE_7__*,TYPE_7__*) ;

__attribute__((used)) static void FilterErase( filter_t *p_filter, picture_t *p_inpic,
                                             picture_t *p_outpic )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    const int i_mask_pitch = p_sys->p_mask->A_PITCH;
    const int i_mask_visible_pitch = p_sys->p_mask->p[A_PLANE].i_visible_pitch;
    const int i_mask_visible_lines = p_sys->p_mask->p[A_PLANE].i_visible_lines;

    for( int i_plane = 0; i_plane < p_inpic->i_planes; i_plane++ )
    {
        const int i_pitch = p_outpic->p[i_plane].i_pitch;
        const int i_2pitch = i_pitch<<1;
        const int i_visible_pitch = p_inpic->p[i_plane].i_visible_pitch;
        const int i_visible_lines = p_inpic->p[i_plane].i_visible_lines;

        uint8_t *p_mask = p_sys->p_mask->A_PIXELS;
        int i_x = p_sys->i_x, i_y = p_sys->i_y;

        int i_height = i_mask_visible_lines;
        int i_width = i_mask_visible_pitch;

        const bool b_line_factor = ( i_plane &&
            !( p_inpic->format.i_chroma == VLC_CODEC_I422
            || p_inpic->format.i_chroma == VLC_CODEC_J422 ) );

        if( i_plane )
        {
            i_width >>= 1;
            i_x >>= 1;
        }
        if( b_line_factor )
        {
            i_height >>= 1;
            i_y >>= 1;
        }
        i_height = __MIN( i_visible_lines - i_y, i_height );
        i_width = __MIN( i_visible_pitch - i_x, i_width );


        plane_CopyPixels( &p_outpic->p[i_plane], &p_inpic->p[i_plane] );


        uint8_t *p_outpix = p_outpic->p[i_plane].p_pixels + i_y*i_pitch + i_x;
        for( int y = 0; y < i_height;
             y++, p_mask += i_mask_pitch, p_outpix += i_pitch )
        {
            uint8_t prev, next = 0;
            int prev_x = -1, next_x = -2;
            int quot = 0;



            if( i_x )
            {


                prev = *(p_outpix-1);
            }
            else if( y || i_y )
            {


                prev = *(p_outpix-i_pitch);
            }
            else
            {




                prev = 0xff;
            }

            for( int x = 0; x < i_width; x++ )
            {
                if( p_mask[i_plane?x<<1:x] > 127 )
                {

                    if( next_x <= prev_x )
                    {
                        int x0;


                        for( x0 = x; x0 < i_width; x0++ )
                        {
                            if( p_mask[i_plane?x0<<1:x0] <= 127 )
                            {

                                next_x = x0;
                                next = p_outpix[x0];
                                break;
                            }
                        }
                        if( next_x <= prev_x )
                        {


                            if( x0 == x ) x0++;
                            if( x0 < i_visible_pitch )
                            {




                                next_x = x0;
                                next = p_outpix[x0];
                            }
                            else
                            {




                                next_x = x0;
                                next = prev;
                            }
                        }
                        if( !( i_x || y || i_y ) )




                            prev = next;


                        quot = ((next-prev)<<16)/(next_x-prev_x);
                    }

                    p_outpix[x] = prev + (((x-prev_x)*quot+(1<<16))>>16);
                }
                else
                {


                    prev = p_outpix[x];
                    prev_x = x;
                }
            }
        }


        p_mask = p_sys->p_mask->A_PIXELS;
        i_height = b_line_factor ? i_mask_visible_lines>>1
                                 : i_mask_visible_lines;


        i_height = __MIN( i_visible_lines - i_y - 2, i_height );


        int y = __MAX(i_y,2);
        p_outpix = p_outpic->p[i_plane].p_pixels + (i_y+y)*i_pitch + i_x;
        for( ; y < i_height; y++, p_mask += i_mask_pitch, p_outpix += i_pitch )
        {
            for( int x = 0; x < i_width; x++ )
            {
                if( p_mask[i_plane?x<<1:x] > 127 )
                {

                    p_outpix[x] =
                        ( (p_outpix[x-i_2pitch]<<1)
                        + (p_outpix[x-i_pitch ]<<2)
                        + (p_outpix[x ]<<2)
                        + (p_outpix[x+i_pitch ]<<2)
                        + (p_outpix[x+i_2pitch]<<1) )>>4;
                }
            }
        }
    }
}
