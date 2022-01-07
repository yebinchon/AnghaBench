
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* psz_desc; TYPE_2__* psz_url; } ;
struct TYPE_8__ {struct TYPE_8__* p_pkey; TYPE_1__ release; int lock; TYPE_3__* p_download; struct TYPE_8__* p_check; int thread; } ;
typedef TYPE_2__ update_t ;
struct TYPE_9__ {int thread; int aborted; } ;


 int assert (TYPE_2__*) ;
 int atomic_store (int *,int) ;
 int free (TYPE_2__*) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (TYPE_3__*) ;

void update_Delete( update_t *p_update )
{
    assert( p_update );

    if( p_update->p_check )
    {
        vlc_join( p_update->p_check->thread, ((void*)0) );
        free( p_update->p_check );
    }

    if( p_update->p_download )
    {
        atomic_store( &p_update->p_download->aborted, 1 );
        vlc_join( p_update->p_download->thread, ((void*)0) );
        vlc_object_delete(p_update->p_download);
    }

    vlc_mutex_destroy( &p_update->lock );

    free( p_update->release.psz_url );
    free( p_update->release.psz_desc );
    free( p_update->p_pkey );

    free( p_update );
}
