#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  OmxEventQueue ;
typedef  int /*<<< orphan*/  OMX_U32 ;
typedef  int /*<<< orphan*/  OMX_PTR ;
typedef  scalar_t__ OMX_EVENTTYPE ;
typedef  scalar_t__ OMX_ERRORTYPE ;

/* Variables and functions */
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ OMX_ErrorTimeout ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

OMX_ERRORTYPE FUNC3(OmxEventQueue *queue,
    OMX_EVENTTYPE specific_event, OMX_U32 *data_1, OMX_U32 *data_2,
    OMX_PTR *event_data)
{
    OMX_ERRORTYPE status;
    OMX_EVENTTYPE event;
    vlc_tick_t before =  FUNC2();

    while(1)
    {
        status = FUNC1(queue, &event, data_1, data_2, event_data);
        if(status != OMX_ErrorNone) return status;

        if(event == specific_event) break;
        if(FUNC2() - before > FUNC0(1)) return OMX_ErrorTimeout;
    }

    return OMX_ErrorNone;
}