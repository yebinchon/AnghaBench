#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  work; int /*<<< orphan*/ * it; int /*<<< orphan*/  requested_device; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_device ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = aout->sys;

    FUNC1(&sys->lock);
    sys->requested_device = default_device; /* break out of MMSession() loop */
    sys->it = NULL; /* break out of MMThread() loop */
    FUNC3(&sys->work);
    FUNC2(&sys->lock);

    FUNC5(sys->thread, NULL);
    FUNC0(&sys->lock);

    FUNC4(sys);
}