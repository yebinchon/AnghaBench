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
typedef  int /*<<< orphan*/  pa_threaded_mainloop ;
typedef  scalar_t__ pa_context_state_t ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
 scalar_t__ PA_CONTEXT_FAILED ; 
 scalar_t__ PA_CONTEXT_READY ; 
 scalar_t__ PA_CONTEXT_TERMINATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2 (pa_context *ctx, pa_threaded_mainloop *mainloop)
{
    pa_context_state_t state;

    while ((state = FUNC0 (ctx)) != PA_CONTEXT_READY)
    {
        if (state == PA_CONTEXT_FAILED || state == PA_CONTEXT_TERMINATED)
            return -1;
        FUNC1 (mainloop);
    }
    return 0;
}