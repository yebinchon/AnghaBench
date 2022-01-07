
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sout_instance_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ input_resource_t ;


 int * RequestSout (TYPE_1__*,int *,char const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

sout_instance_t *input_resource_RequestSout( input_resource_t *p_resource, sout_instance_t *p_sout, const char *psz_sout )
{
    vlc_mutex_lock( &p_resource->lock );
    sout_instance_t *p_ret = RequestSout( p_resource, p_sout, psz_sout );
    vlc_mutex_unlock( &p_resource->lock );

    return p_ret;
}
