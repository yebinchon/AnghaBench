
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_aout_busy; int lock_hold; int p_parent; int * p_aout; } ;
typedef TYPE_1__ input_resource_t ;
typedef int audio_output_t ;


 int aout_Destroy (int *) ;
 int assert (int) ;
 int msg_Dbg (int ,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_resource_PutAout( input_resource_t *p_resource,
                             audio_output_t *p_aout )
{
    assert( p_aout != ((void*)0) );

    vlc_mutex_lock( &p_resource->lock_hold );
    if( p_aout == p_resource->p_aout )
    {
        assert( p_resource->b_aout_busy );
        p_resource->b_aout_busy = 0;
        msg_Dbg( p_resource->p_parent, "keeping audio output" );
        p_aout = ((void*)0);
    }
    else
        msg_Dbg( p_resource->p_parent, "destroying extra audio output" );
    vlc_mutex_unlock( &p_resource->lock_hold );

    if( p_aout != ((void*)0) )
        aout_Destroy( p_aout );
}
