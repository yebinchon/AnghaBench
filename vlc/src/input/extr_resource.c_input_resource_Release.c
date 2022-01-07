
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_vout_dummy; int lock; int lock_hold; int * p_aout; int rc; } ;
typedef TYPE_1__ input_resource_t ;


 int DestroySout (TYPE_1__*) ;
 int DestroyVout (TYPE_1__*) ;
 int aout_Destroy (int *) ;
 int free (TYPE_1__*) ;
 int vlc_atomic_rc_dec (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vout_Release (int ) ;

void input_resource_Release( input_resource_t *p_resource )
{
    if( !vlc_atomic_rc_dec( &p_resource->rc ) )
        return;

    DestroySout( p_resource );
    DestroyVout( p_resource );
    if( p_resource->p_aout != ((void*)0) )
        aout_Destroy( p_resource->p_aout );

    vlc_mutex_destroy( &p_resource->lock_hold );
    vlc_mutex_destroy( &p_resource->lock );
    vout_Release( p_resource->p_vout_dummy );
    free( p_resource );
}
