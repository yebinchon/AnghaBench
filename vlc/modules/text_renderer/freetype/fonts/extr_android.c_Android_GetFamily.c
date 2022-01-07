
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const vlc_family_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int family_map; } ;
typedef TYPE_2__ filter_sys_t ;


 char* ToLower (char const*) ;
 int free (char*) ;
 int const* kVLCDictionaryNotFound ;
 scalar_t__ unlikely (int) ;
 int const* vlc_dictionary_value_for_key (int *,char*) ;

const vlc_family_t *Android_GetFamily( filter_t *p_filter, const char *psz_family )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_lc = ToLower( psz_family );
    if( unlikely( !psz_lc ) )
        return ((void*)0);

    vlc_family_t *p_family =
            vlc_dictionary_value_for_key( &p_sys->family_map, psz_lc );

    free( psz_lc );

    if( p_family == kVLCDictionaryNotFound )
        return ((void*)0);

    return p_family;
}
