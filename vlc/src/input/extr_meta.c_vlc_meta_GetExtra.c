
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra_tags; } ;
typedef TYPE_1__ vlc_meta_t ;


 scalar_t__ vlc_dictionary_value_for_key (int *,char const*) ;

const char * vlc_meta_GetExtra( const vlc_meta_t *m, const char *psz_name )
{
    return (char *)vlc_dictionary_value_for_key(&m->extra_tags, psz_name);
}
