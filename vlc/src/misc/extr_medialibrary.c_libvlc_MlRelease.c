
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int p_module; } ;
struct TYPE_5__ {TYPE_2__ m; int lock; int cbs; } ;
typedef TYPE_1__ vlc_medialibrary_t ;


 int assert (int ) ;
 int module_unneed (TYPE_2__*,int ) ;
 int vlc_list_is_empty (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (TYPE_2__*) ;

void libvlc_MlRelease( vlc_medialibrary_t* p_ml )
{
    assert( p_ml != ((void*)0) );
    module_unneed( &p_ml->m, p_ml->m.p_module );
    assert( vlc_list_is_empty( &p_ml->cbs ) );
    vlc_mutex_destroy( &p_ml->lock );
    vlc_object_delete(&p_ml->m);
}
