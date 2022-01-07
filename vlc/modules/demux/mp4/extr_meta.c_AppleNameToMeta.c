
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_meta_type_t ;
struct TYPE_4__ {char* psz_metadata; int psz_naming; int meta_type; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* com_apple_quicktime_toextrameta ;
 TYPE_1__* com_apple_quicktime_tometa ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static bool AppleNameToMeta( char const* name,
    vlc_meta_type_t const** meta_type, char const** meta_key )
{
    *meta_type = ((void*)0);
    *meta_key = ((void*)0);

    for( size_t i = 0; *meta_type == ((void*)0) &&
                       i < ARRAY_SIZE( com_apple_quicktime_tometa ); ++i )
    {
        if( !strcmp( name, com_apple_quicktime_tometa[i].psz_naming ) )
            *meta_type = &com_apple_quicktime_tometa[i].meta_type;
    }

    for( size_t i = 0; *meta_key == ((void*)0) &&
                       i < ARRAY_SIZE( com_apple_quicktime_toextrameta ); ++i )
    {
        if( !strcmp( name, com_apple_quicktime_toextrameta[i].psz_naming ) )
            *meta_key = com_apple_quicktime_toextrameta[i].psz_metadata;
    }

    return *meta_type || *meta_key;
}
