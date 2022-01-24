#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  interrupted; } ;
typedef  TYPE_1__ vlc_interrupt_t ;
typedef  int /*<<< orphan*/  vlc_cond_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* vlc_interrupt_var ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_mwait_i11e_cleanup ; 
 int /*<<< orphan*/  vlc_mwait_i11e_wake ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(vlc_tick_t deadline)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx == NULL)
        return FUNC9(deadline), 0;

    vlc_cond_t wait;
    FUNC3(&wait);

    FUNC6(ctx, vlc_mwait_i11e_wake, &wait);

    FUNC7(&ctx->lock);
    FUNC1(vlc_mwait_i11e_cleanup, ctx);
    while (!ctx->interrupted
        && FUNC4(&wait, &ctx->lock, deadline) == 0);
    FUNC0();
    FUNC8(&ctx->lock);

    int ret = FUNC5(ctx);
    FUNC2(&wait);
    return ret;
}