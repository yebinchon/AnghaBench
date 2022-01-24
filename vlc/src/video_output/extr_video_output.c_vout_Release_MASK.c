#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* p; } ;
typedef  TYPE_3__ vout_thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  original; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  statistic; int /*<<< orphan*/  display_lock; int /*<<< orphan*/  control; TYPE_2__ display_cfg; int /*<<< orphan*/  window_enabled; scalar_t__ dec_device; TYPE_1__ filter; int /*<<< orphan*/  window_lock; int /*<<< orphan*/  splitter_name; scalar_t__ dummy; int /*<<< orphan*/  refs; } ;
typedef  TYPE_4__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_release ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;

    if (FUNC2(&sys->refs, 1, memory_order_release))
        return;

    if (sys->dummy)
    {
        FUNC7(FUNC0(vout));
        return;
    }

    FUNC3(sys->splitter_name);

    /* Destroy the locks */
    FUNC6(&sys->window_lock);
    FUNC6(&sys->filter.lock);

    if (sys->dec_device)
        FUNC5(sys->dec_device);

    FUNC1(!sys->window_enabled);
    FUNC9(sys->display_cfg.window);

    FUNC8(&sys->control);
    FUNC6(&sys->display_lock);

    /* */
    FUNC11(&sys->statistic);

    /* */
    FUNC10(sys->snapshot);
    FUNC4(&sys->original);
    FUNC7(FUNC0(vout));
}