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
struct TYPE_4__ {int interrupted; int /*<<< orphan*/  lock; int /*<<< orphan*/ * callback; } ;
typedef  TYPE_1__ vlc_interrupt_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* vlc_interrupt_var ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(vlc_interrupt_t *ctx)
{
    int ret = 0;

    FUNC0(ctx != NULL);
    FUNC0(ctx == vlc_interrupt_var);

    /* Wait for pending callbacks to prevent access by other threads. */
    FUNC1(&ctx->lock);
    ctx->callback = NULL;
    if (ctx->interrupted)
    {
        ret = EINTR;
        ctx->interrupted = false;
    }
    FUNC2(&ctx->lock);
    return ret;
}