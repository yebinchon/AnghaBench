
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_vout; int * p_vout_free; int lock_hold; int ** pp_vout; } ;
typedef TYPE_1__ input_resource_t ;


 int TAB_REMOVE (scalar_t__,int **,int *) ;
 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Close (int *) ;

__attribute__((used)) static void DestroyVout( input_resource_t *p_resource )
{
    assert( p_resource->i_vout == 0 || p_resource->p_vout_free == p_resource->pp_vout[0] );

    if( p_resource->p_vout_free )
    {
        vlc_mutex_lock(&p_resource->lock_hold);
        TAB_REMOVE(p_resource->i_vout, p_resource->pp_vout, p_resource->p_vout_free);
        vlc_mutex_unlock(&p_resource->lock_hold);

        vout_Close( p_resource->p_vout_free );
        p_resource->p_vout_free = ((void*)0);
    }
}
