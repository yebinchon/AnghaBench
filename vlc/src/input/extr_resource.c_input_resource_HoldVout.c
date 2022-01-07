
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {scalar_t__ i_vout; int lock_hold; int ** pp_vout; } ;
typedef TYPE_1__ input_resource_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Hold (int *) ;

vout_thread_t *input_resource_HoldVout( input_resource_t *p_resource )
{
    vlc_mutex_lock( &p_resource->lock_hold );

    vout_thread_t *p_vout = p_resource->i_vout > 0 ? p_resource->pp_vout[0] : ((void*)0);
    if( p_vout )
        vout_Hold(p_vout);

    vlc_mutex_unlock( &p_resource->lock_hold );

    return p_vout;
}
