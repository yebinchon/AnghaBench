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
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_6__ {int /*<<< orphan*/  event_data; int /*<<< orphan*/  data_2; int /*<<< orphan*/  data_1; int /*<<< orphan*/  event; struct TYPE_6__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; TYPE_2__* p_events; TYPE_2__** pp_last_event; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ OmxEventQueue ;
typedef  TYPE_2__ OmxEvent ;
typedef  int /*<<< orphan*/  OMX_U32 ;
typedef  int /*<<< orphan*/  OMX_PTR ;
typedef  int /*<<< orphan*/  OMX_EVENTTYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_ErrorTimeout ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 

OMX_ERRORTYPE FUNC6(OmxEventQueue *queue, OMX_EVENTTYPE *event,
    OMX_U32 *data_1, OMX_U32 *data_2, OMX_PTR *event_data)
{
    OmxEvent *p_event;
    vlc_tick_t deadline = FUNC5() + FUNC0(1);

    FUNC3(&queue->mutex);

    while ((p_event = queue->p_events) == NULL)
        if (FUNC2(&queue->cond, &queue->mutex, deadline))
            break;

    if(p_event)
    {
        queue->p_events = p_event->next;
        if(!queue->p_events) queue->pp_last_event = &queue->p_events;
    }

    FUNC4(&queue->mutex);

    if(p_event)
    {
        if(event) *event = p_event->event;
        if(data_1) *data_1 = p_event->data_1;
        if(data_2) *data_2 = p_event->data_2;
        if(event_data) *event_data = p_event->event_data;
        FUNC1(p_event);
        return OMX_ErrorNone;
    }

    return OMX_ErrorTimeout;
}