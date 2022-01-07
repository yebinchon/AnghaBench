
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_tail; int * p_head; } ;
typedef TYPE_1__ queue_t ;


 int VLC_SUCCESS ;
 int memset (TYPE_1__*,int ,int) ;

int QueueInit( queue_t *p_queue )
{
    memset( p_queue, 0, sizeof( queue_t ) );
    p_queue->p_head = ((void*)0);
    p_queue->p_tail = ((void*)0);

    return VLC_SUCCESS;
}
