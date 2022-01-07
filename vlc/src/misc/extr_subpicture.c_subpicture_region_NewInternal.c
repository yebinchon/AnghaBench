
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ i_chroma; int * p_palette; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_11__ {int den; int num; } ;
struct TYPE_10__ {int den; int num; } ;
struct TYPE_13__ {int i_alpha; int b_balanced_text; TYPE_3__ fmt; TYPE_2__ zoom_v; TYPE_1__ zoom_h; } ;
typedef TYPE_4__ subpicture_region_t ;


 scalar_t__ VLC_CODEC_YUVP ;
 void* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int video_format_Copy (TYPE_3__*,TYPE_3__ const*) ;

subpicture_region_t * subpicture_region_NewInternal( const video_format_t *p_fmt )
{
    subpicture_region_t *p_region = calloc( 1, sizeof(*p_region ) );
    if( !p_region )
        return ((void*)0);

    p_region->zoom_h.den = p_region->zoom_h.num = 1;
    p_region->zoom_v.den = p_region->zoom_v.num = 1;

    if ( p_fmt->i_chroma == VLC_CODEC_YUVP )
    {
        video_format_Copy( &p_region->fmt, p_fmt );

        if( p_region->fmt.p_palette == ((void*)0) )
        {
            p_region->fmt.p_palette = calloc( 1, sizeof(*p_region->fmt.p_palette) );
            if( p_region->fmt.p_palette == ((void*)0) )
            {
                free( p_region );
                return ((void*)0);
            }
        }
    }
    else
    {
        p_region->fmt = *p_fmt;
        p_region->fmt.p_palette = ((void*)0);
    }

    p_region->i_alpha = 0xff;
    p_region->b_balanced_text = 1;

    return p_region;
}
