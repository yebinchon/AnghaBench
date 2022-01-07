
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ i_chroma; unsigned int i_height; unsigned int i_width; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_12__ {unsigned int columns; int* color_map; TYPE_1__* text; } ;
typedef TYPE_4__ vbi_page ;
typedef int vbi_opacity ;
typedef int uint32_t ;
struct TYPE_13__ {TYPE_2__* p; } ;
typedef TYPE_5__ picture_t ;
struct TYPE_10__ {unsigned int i_pitch; int * p_pixels; } ;
struct TYPE_9__ {int opacity; int background; } ;






 scalar_t__ VLC_CODEC_RGBA ;
 int VLC_SUCCESS ;
 int assert (int) ;

__attribute__((used)) static int OpaquePage( picture_t *p_src, const vbi_page *p_page,
                       const video_format_t *p_fmt, bool b_opaque, const int text_offset )
{
    unsigned int x, y;

    assert( p_fmt->i_chroma == VLC_CODEC_RGBA );


    for( y = 0; y < p_fmt->i_height; y++ )
    {
        for( x = 0; x < p_fmt->i_width; x++ )
        {
            const vbi_opacity opacity = p_page->text[ text_offset + y/10 * p_page->columns + x/12 ].opacity;
            const int background = p_page->text[ text_offset + y/10 * p_page->columns + x/12 ].background;
            uint32_t *p_pixel = (uint32_t*)&p_src->p->p_pixels[y * p_src->p->i_pitch + 4*x];

            switch( opacity )
            {




            case 131:

            case 130:
                if( b_opaque )
                    break;


            case 129:
                if( (*p_pixel) != (0xff000000 | p_page->color_map[background] ) )
                    break;


            case 128:
                *p_pixel = 0;
                break;
            }
        }
    }

    return VLC_SUCCESS;
}
