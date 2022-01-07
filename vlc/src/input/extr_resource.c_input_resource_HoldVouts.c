
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {size_t i_vout; int lock_hold; int ** pp_vout; } ;
typedef TYPE_1__ input_resource_t ;


 int ** vlc_alloc (size_t,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Hold (int *) ;

void input_resource_HoldVouts( input_resource_t *p_resource, vout_thread_t ***ppp_vout,
                               size_t *pi_vout )
{
    vout_thread_t **pp_vout;

    *pi_vout = 0;
    *ppp_vout = ((void*)0);

    vlc_mutex_lock( &p_resource->lock_hold );

    if( p_resource->i_vout <= 0 )
        goto exit;

    pp_vout = vlc_alloc( p_resource->i_vout, sizeof(*pp_vout) );
    if( !pp_vout )
        goto exit;

    *ppp_vout = pp_vout;
    *pi_vout = p_resource->i_vout;

    for( int i = 0; i < p_resource->i_vout; i++ )
    {
        pp_vout[i] = p_resource->pp_vout[i];
        vout_Hold(pp_vout[i]);
    }

exit:
    vlc_mutex_unlock( &p_resource->lock_hold );
}
