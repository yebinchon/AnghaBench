#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pa_time_event ;
typedef  int /*<<< orphan*/  pa_threaded_mainloop ;
struct TYPE_3__ {int /*<<< orphan*/  (* time_free ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ pa_mainloop_api ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (pa_threaded_mainloop *mainloop, pa_time_event *e)
{
    pa_mainloop_api *api = FUNC0 (mainloop);

    api->time_free (e);
}