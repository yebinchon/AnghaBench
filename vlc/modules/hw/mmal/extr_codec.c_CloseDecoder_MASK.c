#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_9__ {int /*<<< orphan*/  sem; TYPE_4__* component; scalar_t__ output_pool; scalar_t__ output_format; scalar_t__ input_pool; TYPE_3__* output; TYPE_3__* input; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_11__ {scalar_t__ is_enabled; TYPE_3__* control; } ;
struct TYPE_10__ {scalar_t__ is_enabled; } ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(decoder_t *dec)
{
    decoder_sys_t *sys = dec->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;

    if (!sys)
        return;

    if (sys->component && sys->component->control->is_enabled)
        FUNC6(sys->component->control);

    if (sys->input && sys->input->is_enabled)
        FUNC6(sys->input);

    if (sys->output && sys->output->is_enabled)
        FUNC6(sys->output);

    if (sys->component && sys->component->is_enabled)
        FUNC2(sys->component);

    if (sys->input_pool)
        FUNC5(sys->input_pool);

    if (sys->output_format)
        FUNC4(sys->output_format);

    if (sys->output_pool)
        FUNC5(sys->output_pool);

    if (sys->component)
        FUNC3(sys->component);

    FUNC7(&sys->sem);
    FUNC1(sys);

    FUNC0();
}