#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int request_device_restart; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * stream; int /*<<< orphan*/  lock; int /*<<< orphan*/  ready; int /*<<< orphan*/ * requested_device; int /*<<< orphan*/  work; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_RESTART_OUTPUT ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    FUNC3(sys->requested_device);

    sys->request_device_restart = false;

    FUNC1(&sys->work);
    while (sys->requested_device != NULL)
        FUNC0(&sys->ready, &sys->lock, INFINITE);

    if (sys->stream != NULL && sys->dev != NULL)
        /* Request restart of stream with the new device */
        FUNC2(aout, AOUT_RESTART_OUTPUT);
    return (sys->dev != NULL) ? 0 : -1;
}