
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; int mutex; } ;
typedef TYPE_1__ OmxEventQueue ;


 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

void DeinitOmxEventQueue(OmxEventQueue *queue)
{
    vlc_mutex_destroy(&queue->mutex);
    vlc_cond_destroy(&queue->cond);
}
