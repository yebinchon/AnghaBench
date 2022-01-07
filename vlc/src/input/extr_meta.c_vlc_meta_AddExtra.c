
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra_tags; } ;
typedef TYPE_1__ vlc_meta_t ;


 char* kVLCDictionaryNotFound ;
 int strdup (char const*) ;
 int vlc_dictionary_insert (int *,char const*,int ) ;
 int vlc_dictionary_remove_value_for_key (int *,char const*,int ,int *) ;
 scalar_t__ vlc_dictionary_value_for_key (int *,char const*) ;
 int vlc_meta_FreeExtraKey ;

void vlc_meta_AddExtra( vlc_meta_t *m, const char *psz_name, const char *psz_value )
{
    char *psz_oldvalue = (char *)vlc_dictionary_value_for_key( &m->extra_tags, psz_name );
    if( psz_oldvalue != kVLCDictionaryNotFound )
        vlc_dictionary_remove_value_for_key( &m->extra_tags, psz_name,
                                            vlc_meta_FreeExtraKey, ((void*)0) );
    vlc_dictionary_insert( &m->extra_tags, psz_name, strdup(psz_value) );
}
