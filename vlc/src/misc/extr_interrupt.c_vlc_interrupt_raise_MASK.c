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
struct TYPE_3__ {int interrupted; int /*<<< orphan*/  lock; int /*<<< orphan*/  data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(vlc_interrupt_t *ctx)
{
    FUNC0(ctx != NULL);

    /* This function must be reentrant. But the callback typically is not
     * reentrant. The lock ensures that all calls to the callback for a given
     * context are serialized. The lock also protects against invalid memory
     * accesses to the callback pointer proper, and the interrupted flag. */
    FUNC2(&ctx->lock);
    ctx->interrupted = true;
    if (ctx->callback != NULL)
        ctx->callback(ctx->data);
    FUNC3(&ctx->lock);
}