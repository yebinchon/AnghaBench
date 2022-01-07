
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_tail; TYPE_2__* p_head; } ;
typedef TYPE_1__ queue_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ command_t ;


 int VLC_SUCCESS ;

int QueueEnqueue( queue_t *p_queue, command_t *p_cmd )
{
    if( p_queue->p_tail != ((void*)0) )
    {
        p_queue->p_tail->p_next = p_cmd;
    }
    if( p_queue->p_head == ((void*)0) )
    {
        p_queue->p_head = p_cmd;
    }
    p_queue->p_tail = p_cmd;
    p_cmd->p_next = ((void*)0);

    return VLC_SUCCESS;
}
