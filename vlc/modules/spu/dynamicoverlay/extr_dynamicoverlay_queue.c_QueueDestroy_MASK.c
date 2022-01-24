#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * p_tail; TYPE_2__* p_head; } ;
typedef  TYPE_1__ queue_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef  TYPE_2__ command_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

int FUNC1( queue_t *p_queue )
{
    command_t *p_cur = p_queue->p_head, *p_temp;
    while( p_cur != NULL )
    {
        p_temp = p_cur;
        p_cur = p_cur->p_next;
        FUNC0( p_temp );
    }
    p_queue->p_head = NULL;
    p_queue->p_tail = NULL;

    return VLC_SUCCESS;
}