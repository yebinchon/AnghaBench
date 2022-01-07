
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra_tags; } ;
typedef TYPE_1__ vlc_meta_t ;


 char** vlc_dictionary_all_keys (int *) ;

char** vlc_meta_CopyExtraNames( const vlc_meta_t *m )
{
    return vlc_dictionary_all_keys(&m->extra_tags);
}
