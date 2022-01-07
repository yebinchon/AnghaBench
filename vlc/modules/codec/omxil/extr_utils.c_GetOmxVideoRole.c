
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_2__ {scalar_t__ i_codec; scalar_t__ i_fourcc; char const* psz_role; } ;


 int VIDEO_ES ;
 TYPE_1__* video_format_table ;
 scalar_t__ vlc_fourcc_GetCodec (int ,scalar_t__) ;

__attribute__((used)) static const char *GetOmxVideoRole( vlc_fourcc_t i_fourcc )
{
    unsigned int i;

    i_fourcc = vlc_fourcc_GetCodec( VIDEO_ES, i_fourcc );

    for( i = 0; video_format_table[i].i_codec != 0; i++ )
        if( video_format_table[i].i_fourcc == i_fourcc ) break;

    return video_format_table[i].psz_role;
}
