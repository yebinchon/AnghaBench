
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int event_data; void* data_2; void* data_1; int event; } ;
struct TYPE_5__ {int mutex; int cond; TYPE_2__** pp_last_event; } ;
typedef TYPE_1__ OmxEventQueue ;
typedef TYPE_2__ OmxEvent ;
typedef void* OMX_U32 ;
typedef int OMX_PTR ;
typedef int OMX_EVENTTYPE ;
typedef int OMX_ERRORTYPE ;


 int OMX_ErrorInsufficientResources ;
 int OMX_ErrorNone ;
 TYPE_2__* malloc (int) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

OMX_ERRORTYPE PostOmxEvent(OmxEventQueue *queue, OMX_EVENTTYPE event,
    OMX_U32 data_1, OMX_U32 data_2, OMX_PTR event_data)
{
    OmxEvent *p_event;

    p_event = malloc(sizeof(OmxEvent));
    if(!p_event) return OMX_ErrorInsufficientResources;

    p_event->event = event;
    p_event->data_1 = data_1;
    p_event->data_2 = data_2;
    p_event->event_data = event_data;
    p_event->next = 0;

    vlc_mutex_lock(&queue->mutex);
    *queue->pp_last_event = p_event;
    queue->pp_last_event = &p_event->next;
    vlc_cond_signal(&queue->cond);
    vlc_mutex_unlock(&queue->mutex);
    return OMX_ErrorNone;
}
