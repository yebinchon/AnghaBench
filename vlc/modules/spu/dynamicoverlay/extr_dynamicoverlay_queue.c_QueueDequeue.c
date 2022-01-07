
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_head; TYPE_2__* p_tail; } ;
typedef TYPE_1__ queue_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ command_t ;



command_t *QueueDequeue( queue_t *p_queue )
{
    if( p_queue->p_head == ((void*)0) )
    {
        return ((void*)0);
    }
    else
    {
        command_t *p_ret = p_queue->p_head;
        if( p_queue->p_head == p_queue->p_tail )
        {
            p_queue->p_head = p_queue->p_tail = ((void*)0);
        }
        else
        {
            p_queue->p_head = p_queue->p_head->p_next;
        }
        return p_ret;
    }
}
