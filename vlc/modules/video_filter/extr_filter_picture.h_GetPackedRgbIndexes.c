
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_chroma; int i_bmask; int i_gmask; int i_rmask; } ;
typedef TYPE_1__ video_format_t ;


 scalar_t__ VLC_CODEC_RGB24 ;
 scalar_t__ VLC_CODEC_RGB32 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_ctz (int ) ;

__attribute__((used)) static inline int GetPackedRgbIndexes( const video_format_t *p_fmt, int *i_r_index,
                                      int *i_g_index, int *i_b_index )
{
    if( p_fmt->i_chroma != VLC_CODEC_RGB24 && p_fmt->i_chroma != VLC_CODEC_RGB32 )
        return VLC_EGENERIC;







    *i_r_index = vlc_ctz(p_fmt->i_rmask) / 8;
    *i_g_index = vlc_ctz(p_fmt->i_gmask) / 8;
    *i_b_index = vlc_ctz(p_fmt->i_bmask) / 8;

    return VLC_SUCCESS;
}
