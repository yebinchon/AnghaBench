#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_11__ {int /*<<< orphan*/  sem; TYPE_6__* component; scalar_t__ filtered_pictures; TYPE_5__* output; TYPE_5__* input; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_14__ {scalar_t__ is_enabled; TYPE_5__* control; } ;
struct TYPE_13__ {scalar_t__ is_enabled; } ;
struct TYPE_12__ {scalar_t__ user_data; } ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_3__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(filter_t *filter)
{
    filter_sys_t *sys = filter->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;

    if (!sys)
        return;

    if (sys->component && sys->component->control->is_enabled)
        FUNC4(sys->component->control);

    if (sys->input && sys->input->is_enabled)
        FUNC4(sys->input);

    if (sys->output && sys->output->is_enabled)
        FUNC4(sys->output);

    if (sys->component && sys->component->is_enabled)
        FUNC2(sys->component);

    while ((buffer = FUNC6(sys->filtered_pictures))) {
        picture_t *pic = (picture_t *)buffer->user_data;
        FUNC7(pic);
    }

    if (sys->filtered_pictures)
        FUNC5(sys->filtered_pictures);

    if (sys->component)
        FUNC3(sys->component);

    FUNC8(&sys->sem);
    FUNC1(sys);

    FUNC0();
}