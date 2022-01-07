
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_2__ {scalar_t__ i_chroma; int i_chroma_id; } ;


 int AV_PIX_FMT_NONE ;
 TYPE_1__* chroma_table ;

int FindFfmpegChroma( vlc_fourcc_t fourcc )
{
    for( int i = 0; chroma_table[i].i_chroma != 0; i++ )
        if( chroma_table[i].i_chroma == fourcc )
            return chroma_table[i].i_chroma_id;
    return AV_PIX_FMT_NONE;
}
