
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * p_vout_free; } ;
typedef TYPE_1__ input_resource_t ;


 int msg_Dbg (int *,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Stop (int *) ;

void input_resource_StopFreeVout(input_resource_t *p_resource)
{
    vlc_mutex_lock(&p_resource->lock);
    if (p_resource->p_vout_free != ((void*)0))
    {
        msg_Dbg(p_resource->p_vout_free, "stop free vout");
        vout_Stop(p_resource->p_vout_free);
    }
    vlc_mutex_unlock(&p_resource->lock);
}
