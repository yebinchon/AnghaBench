#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlc_thread_t ;
struct TYPE_4__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (vlc_thread_t handle, void **result)
{
    FUNC4 (&handle->finished);
    FUNC3 (&handle->finished);

    int val = FUNC2 (handle->thread, result);
    FUNC0 ("joining thread");
    FUNC1(handle);
}