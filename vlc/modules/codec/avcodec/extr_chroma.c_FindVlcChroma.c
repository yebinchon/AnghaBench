
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_2__ {scalar_t__ i_chroma; int i_chroma_id; } ;


 TYPE_1__* chroma_table ;

vlc_fourcc_t FindVlcChroma( int i_ffmpeg_id )
{
    for( int i = 0; chroma_table[i].i_chroma != 0; i++ )
        if( chroma_table[i].i_chroma_id == i_ffmpeg_id )
            return chroma_table[i].i_chroma;
    return 0;
}
