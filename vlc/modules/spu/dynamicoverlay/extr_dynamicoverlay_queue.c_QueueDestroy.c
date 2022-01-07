
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_tail; TYPE_2__* p_head; } ;
typedef TYPE_1__ queue_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ command_t ;


 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;

int QueueDestroy( queue_t *p_queue )
{
    command_t *p_cur = p_queue->p_head, *p_temp;
    while( p_cur != ((void*)0) )
    {
        p_temp = p_cur;
        p_cur = p_cur->p_next;
        free( p_temp );
    }
    p_queue->p_head = ((void*)0);
    p_queue->p_tail = ((void*)0);

    return VLC_SUCCESS;
}
