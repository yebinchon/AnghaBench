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
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_8__ {int /*<<< orphan*/  started; int /*<<< orphan*/  filtered_pictures; int /*<<< orphan*/  sem; int /*<<< orphan*/  output_in_transit; int /*<<< orphan*/  input_in_transit; int /*<<< orphan*/  input; int /*<<< orphan*/  output; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_9__ {scalar_t__ user_data; } ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(filter_t *filter)
{
    filter_sys_t *sys = filter->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;

    FUNC4(filter, "flush deinterlace filter");

    FUNC4(filter, "flush: flush ports (input: %d, output: %d in transit)",
            sys->input_in_transit, sys->output_in_transit);
    FUNC2(sys->output);
    FUNC2(sys->input);

    FUNC4(filter, "flush: wait for all buffers to be returned");
    while (FUNC0(&sys->input_in_transit) ||
            FUNC0(&sys->output_in_transit))
        FUNC6(&sys->sem);

    while ((buffer = FUNC3(sys->filtered_pictures))) {
        picture_t *pic = (picture_t *)buffer->user_data;
        FUNC4(filter, "flush: release already filtered pic %p",
                (void *)pic);
        FUNC5(pic);
    }
    FUNC1(&sys->started, false);
    FUNC4(filter, "flush: done");
}