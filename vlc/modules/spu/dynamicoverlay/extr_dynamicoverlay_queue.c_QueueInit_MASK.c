#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * p_tail; int /*<<< orphan*/ * p_head; } ;
typedef  TYPE_1__ queue_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC1( queue_t *p_queue )
{
    FUNC0( p_queue, 0, sizeof( queue_t ) );
    p_queue->p_head = NULL;
    p_queue->p_tail = NULL;

    return VLC_SUCCESS;
}