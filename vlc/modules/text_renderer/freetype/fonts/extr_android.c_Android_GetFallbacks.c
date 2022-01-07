
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_family_t ;
typedef int uni_char_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int fallback_map; } ;
typedef TYPE_2__ filter_sys_t ;


 char* ToLower (char const*) ;
 int VLC_UNUSED (int ) ;
 int free (char*) ;
 int * kVLCDictionaryNotFound ;
 scalar_t__ unlikely (int) ;
 int * vlc_dictionary_value_for_key (int *,char*) ;

vlc_family_t *Android_GetFallbacks( filter_t *p_filter, const char *psz_family,
                                    uni_char_t codepoint )
{
    VLC_UNUSED( codepoint );

    vlc_family_t *p_fallbacks = ((void*)0);
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_lc = ToLower( psz_family );
    if( unlikely( !psz_lc ) )
        return ((void*)0);

    p_fallbacks = vlc_dictionary_value_for_key( &p_sys->fallback_map, psz_lc );

    free( psz_lc );

    if( p_fallbacks == kVLCDictionaryNotFound )
        return ((void*)0);

    return p_fallbacks;
}
