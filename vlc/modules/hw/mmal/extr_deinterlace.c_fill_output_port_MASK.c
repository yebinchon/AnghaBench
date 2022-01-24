#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_9__ {unsigned int output_in_transit; TYPE_1__* output; int /*<<< orphan*/  filtered_pictures; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_7__ {int buffer_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIN_NUM_BUFFERS_IN_TRANSIT ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int,int,unsigned int,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(filter_t *filter)
{
    filter_sys_t *sys = filter->p_sys;
    /* allow at least 2 buffers in transit */
    unsigned max_buffers_in_transit = FUNC0(2, MIN_NUM_BUFFERS_IN_TRANSIT);
    int buffers_available = sys->output->buffer_num -
        FUNC1(&sys->output_in_transit) -
        FUNC2(sys->filtered_pictures);
    int buffers_to_send = max_buffers_in_transit - sys->output_in_transit;
    int i;

    if (buffers_to_send > buffers_available)
        buffers_to_send = buffers_available;

#ifndef NDEBUG
    FUNC3(filter, "Send %d buffers to output port (available: %d, in_transit: %d, buffer_num: %d)",
                    buffers_to_send, buffers_available, sys->output_in_transit,
                    sys->output->buffer_num);
#endif
    for (i = 0; i < buffers_to_send; ++i) {
        if (FUNC4(filter) < 0)
            break;
    }
}