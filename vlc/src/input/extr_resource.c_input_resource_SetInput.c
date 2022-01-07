
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_3__ {scalar_t__ i_vout; scalar_t__ p_vout_free; scalar_t__* pp_vout; int lock; int * p_input; } ;
typedef TYPE_1__ input_resource_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_resource_SetInput( input_resource_t *p_resource, input_thread_t *p_input )
{
    vlc_mutex_lock( &p_resource->lock );

    if( p_resource->p_input && !p_input )
        assert( p_resource->i_vout == 0 || p_resource->p_vout_free == p_resource->pp_vout[0] );


    p_resource->p_input = p_input;

    vlc_mutex_unlock( &p_resource->lock );
}
