
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ input_resource_t ;


 int input_resource_PutVoutLocked (TYPE_1__*,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_resource_PutVout(input_resource_t *p_resource,
                                   vout_thread_t *vout)
{
    vlc_mutex_lock( &p_resource->lock );
    input_resource_PutVoutLocked( p_resource, vout );
    vlc_mutex_unlock( &p_resource->lock );
}
