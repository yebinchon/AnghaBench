
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extra_tags; struct TYPE_4__** ppsz_meta; } ;
typedef TYPE_1__ vlc_meta_t ;


 int VLC_META_TYPE_COUNT ;
 int free (TYPE_1__*) ;
 int vlc_dictionary_clear (int *,int ,int *) ;
 int vlc_meta_FreeExtraKey ;

void vlc_meta_Delete( vlc_meta_t *m )
{
    for( int i = 0; i < VLC_META_TYPE_COUNT ; i++ )
        free( m->ppsz_meta[i] );
    vlc_dictionary_clear( &m->extra_tags, vlc_meta_FreeExtraKey, ((void*)0) );
    free( m );
}
