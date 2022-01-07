
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_3__ {int i_codec; int psz_ext; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ext_table ;
 int strcasecmp (int ,char const*) ;

vlc_fourcc_t image_Type2Fourcc( const char *psz_type )
{
    for( unsigned i = 0; i < ARRAY_SIZE(ext_table); i++ )
        if( !strcasecmp( ext_table[i].psz_ext, psz_type ) )
            return ext_table[i].i_codec;

    return 0;
}
