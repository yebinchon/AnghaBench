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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int /*<<< orphan*/  pa_context ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
#define  PA_SUBSCRIPTION_EVENT_CHANGE 130 
#define  PA_SUBSCRIPTION_EVENT_NEW 129 
#define  PA_SUBSCRIPTION_EVENT_REMOVE 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sink_add_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sink_mod_cb ; 

__attribute__((used)) static void FUNC3(pa_context *ctx, unsigned type, uint32_t idx,
                       audio_output_t *aout)
{
    pa_operation *op = NULL;

    switch (type)
    {
        case PA_SUBSCRIPTION_EVENT_NEW:
            op = FUNC0(ctx, idx, sink_add_cb,
                                                   aout);
            break;
        case PA_SUBSCRIPTION_EVENT_CHANGE:
            op = FUNC0(ctx, idx, sink_mod_cb,
                                                   aout);
            break;
        case PA_SUBSCRIPTION_EVENT_REMOVE:
            FUNC2(idx, aout);
            break;
    }
    if (op != NULL)
        FUNC1(op);
}