
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_hold; int * p_aout; } ;
typedef TYPE_1__ input_resource_t ;
typedef int audio_output_t ;


 int aout_Hold (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

audio_output_t *input_resource_HoldAout( input_resource_t *p_resource )
{
    audio_output_t *p_aout;

    vlc_mutex_lock( &p_resource->lock_hold );
    p_aout = p_resource->p_aout;
    if( p_aout != ((void*)0) )
        aout_Hold(p_aout);
    vlc_mutex_unlock( &p_resource->lock_hold );

    return p_aout;
}
