
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_aout_busy; int lock_hold; int * p_aout; int p_parent; } ;
typedef TYPE_1__ input_resource_t ;
typedef int audio_output_t ;


 int * aout_New (int ) ;
 int assert (int) ;
 int msg_Dbg (int ,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

audio_output_t *input_resource_GetAout( input_resource_t *p_resource )
{
    audio_output_t *p_aout;

    vlc_mutex_lock( &p_resource->lock_hold );
    p_aout = p_resource->p_aout;

    if( p_aout == ((void*)0) || p_resource->b_aout_busy )
    {
        msg_Dbg( p_resource->p_parent, "creating audio output" );
        vlc_mutex_unlock( &p_resource->lock_hold );

        p_aout = aout_New( p_resource->p_parent );
        if( p_aout == ((void*)0) )
            return ((void*)0);

        vlc_mutex_lock( &p_resource->lock_hold );
        if( p_resource->p_aout == ((void*)0) )
            p_resource->p_aout = p_aout;
    }
    else
        msg_Dbg( p_resource->p_parent, "reusing audio output" );

    if( p_resource->p_aout == p_aout )
    {
        assert( !p_resource->b_aout_busy );
        p_resource->b_aout_busy = 1;
    }
    vlc_mutex_unlock( &p_resource->lock_hold );
    return p_aout;
}
