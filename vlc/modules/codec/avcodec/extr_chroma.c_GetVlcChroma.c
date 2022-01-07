
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_chroma; int i_bmask; int i_gmask; int i_rmask; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_6__ {scalar_t__ i_chroma; int i_chroma_id; int i_bmask; int i_gmask; int i_rmask; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_3__* chroma_table ;
 int video_format_FixRgb (TYPE_1__*) ;

int GetVlcChroma( video_format_t *fmt, int i_ffmpeg_chroma )
{
    for( int i = 0; chroma_table[i].i_chroma != 0; i++ )
    {
        if( chroma_table[i].i_chroma_id == i_ffmpeg_chroma )
        {
            fmt->i_rmask = chroma_table[i].i_rmask;
            fmt->i_gmask = chroma_table[i].i_gmask;
            fmt->i_bmask = chroma_table[i].i_bmask;
            fmt->i_chroma = chroma_table[i].i_chroma;
            video_format_FixRgb( fmt );
            return VLC_SUCCESS;
        }
    }
    return VLC_EGENERIC;
}
