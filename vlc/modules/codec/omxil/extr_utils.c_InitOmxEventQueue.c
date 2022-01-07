
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; int mutex; int p_events; int * pp_last_event; } ;
typedef TYPE_1__ OmxEventQueue ;


 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

void InitOmxEventQueue(OmxEventQueue *queue)
{
    queue->pp_last_event = &queue->p_events;
    vlc_mutex_init(&queue->mutex);
    vlc_cond_init(&queue->cond);
}
