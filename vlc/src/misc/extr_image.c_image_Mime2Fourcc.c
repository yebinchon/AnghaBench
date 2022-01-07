
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_2__ {scalar_t__ i_codec; int psz_mime; } ;


 TYPE_1__* mime_table ;
 int strcmp (char const*,int ) ;

vlc_fourcc_t image_Mime2Fourcc( const char *psz_mime )
{
    for( int i = 0; mime_table[i].i_codec; i++ )
        if( !strcmp( psz_mime, mime_table[i].psz_mime ) )
            return mime_table[i].i_codec;
    return 0;
}
