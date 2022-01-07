
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_tail; int * p_head; } ;
typedef TYPE_2__ queue_t ;
struct TYPE_5__ {int * p_next; } ;


 int VLC_SUCCESS ;

int QueueTransfer( queue_t *p_sink, queue_t *p_source )
{
    if( p_source->p_head == ((void*)0) ) {
        return VLC_SUCCESS;
    }

    if( p_sink->p_head == ((void*)0) ) {
        p_sink->p_head = p_source->p_head;
        p_sink->p_tail = p_source->p_tail;
    } else {
        p_sink->p_tail->p_next = p_source->p_head;
        p_sink->p_tail = p_source->p_tail;
    }
    p_source->p_head = p_source->p_tail = ((void*)0);

    return VLC_SUCCESS;
}
