
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_chroma; scalar_t__ i_rmask; scalar_t__ i_gmask; scalar_t__ i_bmask; } ;
typedef TYPE_1__ video_format_t ;


 scalar_t__ VLC_CODEC_RGB15 ;
 scalar_t__ VLC_CODEC_RGB16 ;
 scalar_t__ VLC_CODEC_RGB24 ;
 scalar_t__ VLC_CODEC_RGB32 ;
 int video_format_FixRgb (TYPE_1__*) ;

__attribute__((used)) static bool BitMapFormatIsSimilar( const video_format_t *f1,
                                   const video_format_t *f2 )
{
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
