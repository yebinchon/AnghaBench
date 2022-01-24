#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_7__ {int /*<<< orphan*/  device_events; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/ * requested_device; int /*<<< orphan*/ * it; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  IMMDeviceEnumerator ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MMThread_DevicesEnum_Added ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC12(void *data)
{
    audio_output_t *aout = data;
    aout_sys_t *sys = aout->sys;
    IMMDeviceEnumerator *it = sys->it;

    FUNC2();
    FUNC4(it,
                                                          &sys->device_events);
    HRESULT hr = FUNC0(it, MMThread_DevicesEnum_Added, aout);
    if (FUNC3(hr))
        FUNC11(aout, "cannot enumerate audio endpoints (error 0x%lX)", hr);

    FUNC1(&sys->lock);

    do
        if (sys->requested_device == NULL || FUNC3(FUNC9(aout, it)))
            FUNC10(&sys->work, &sys->lock, INFINITE);
    while (sys->it != NULL);

    FUNC7(&sys->lock);

    FUNC6(it,
                                                          &sys->device_events);
    FUNC5(it);
    FUNC8();
    return NULL;
}