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
typedef  scalar_t__ pa_stream_state_t ;
typedef  int /*<<< orphan*/  pa_stream ;

/* Variables and functions */
 scalar_t__ PA_STREAM_FAILED ; 
 scalar_t__ PA_STREAM_READY ; 
 scalar_t__ PA_STREAM_TERMINATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(pa_stream *stream, pa_threaded_mainloop *mainloop)
{
    pa_stream_state_t state;

    while ((state = FUNC0(stream)) != PA_STREAM_READY) {
        if (state == PA_STREAM_FAILED || state == PA_STREAM_TERMINATED)
            return -1;
        FUNC1(mainloop);
    }
    return 0;
}