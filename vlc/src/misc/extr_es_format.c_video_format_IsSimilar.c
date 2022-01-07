
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_chroma; scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; int i_sar_den; scalar_t__ orientation; scalar_t__ multiview_mode; scalar_t__ i_rmask; scalar_t__ i_gmask; scalar_t__ i_bmask; scalar_t__ i_sar_num; } ;
typedef TYPE_1__ video_format_t ;
typedef int int64_t ;


 scalar_t__ VLC_CODEC_RGB15 ;
 scalar_t__ VLC_CODEC_RGB16 ;
 scalar_t__ VLC_CODEC_RGB24 ;
 scalar_t__ VLC_CODEC_RGB32 ;
 int video_format_FixRgb (TYPE_1__*) ;

bool video_format_IsSimilar( const video_format_t *f1,
                             const video_format_t *f2 )
{
    if( f1->i_chroma != f2->i_chroma )
        return 0;

    if( f1->i_width != f2->i_width || f1->i_height != f2->i_height ||
        f1->i_visible_width != f2->i_visible_width ||
        f1->i_visible_height != f2->i_visible_height ||
        f1->i_x_offset != f2->i_x_offset || f1->i_y_offset != f2->i_y_offset )
        return 0;
    if( (int64_t)f1->i_sar_num * f2->i_sar_den !=
        (int64_t)f2->i_sar_num * f1->i_sar_den )
        return 0;

    if( f1->orientation != f2->orientation)
        return 0;

    if( f1->multiview_mode!= f2->multiview_mode )
       return 0;

    if( f1->i_chroma == VLC_CODEC_RGB15 ||
        f1->i_chroma == VLC_CODEC_RGB16 ||
        f1->i_chroma == VLC_CODEC_RGB24 ||
        f1->i_chroma == VLC_CODEC_RGB32 )
    {
        video_format_t v1 = *f1;
        video_format_t v2 = *f2;

        video_format_FixRgb( &v1 );
        video_format_FixRgb( &v2 );

        if( v1.i_rmask != v2.i_rmask ||
            v1.i_gmask != v2.i_gmask ||
            v1.i_bmask != v2.i_bmask )
            return 0;
    }
    return 1;
}
