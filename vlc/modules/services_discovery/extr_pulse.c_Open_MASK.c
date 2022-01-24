#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  description; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_8__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/ * root; int /*<<< orphan*/ * context; } ;
typedef  TYPE_2__ services_discovery_sys_t ;
typedef  int /*<<< orphan*/  pa_subscription_mask_t ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
 int /*<<< orphan*/  ContextCallback ; 
 int /*<<< orphan*/  PA_SUBSCRIPTION_MASK_SOURCE ; 
 int /*<<< orphan*/  SourceCallback ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12 (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    pa_operation *op;
    pa_context *ctx;

    services_discovery_sys_t *sys = FUNC3 (sizeof (*sys));
    if (FUNC10(sys == NULL))
        return VLC_ENOMEM;

    ctx = FUNC11 (obj, &sys->mainloop);
    if (ctx == NULL)
    {
        FUNC1 (sys);
        return VLC_EGENERIC;
    }

    sd->p_sys = sys;
    sd->description = FUNC0("Audio capture");
    sys->context = ctx;
    sys->root = NULL;

    /* Subscribe for source events */
    const pa_subscription_mask_t mask = PA_SUBSCRIPTION_MASK_SOURCE;
    FUNC8 (sys->mainloop);
    FUNC5 (ctx, ContextCallback, sd);
    op = FUNC6 (ctx, mask, NULL, NULL);
    if (FUNC2(op != NULL))
        FUNC7 (op);

    /* Enumerate existing sources */
    op = FUNC4 (ctx, SourceCallback, sd);
    if (FUNC2(op != NULL))
    {
        //while (pa_operation_get_state (op) == PA_OPERATION_RUNNING)
        //    pa_threaded_mainloop_wait (sys->mainloop);
        FUNC7 (op);
    }
    FUNC9 (sys->mainloop);
    return VLC_SUCCESS;
/*
error:
    pa_threaded_mainloop_unlock (sys->mainloop);
    vlc_pa_disconnect (obj, ctx, sys->mainloop);
    free (sys);
    return VLC_EGENERIC;*/
}