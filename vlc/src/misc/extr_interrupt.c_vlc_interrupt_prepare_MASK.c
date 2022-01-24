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
struct TYPE_4__ {void (* callback ) (void*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  interrupted; void* data; } ;
typedef  TYPE_1__ vlc_interrupt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vlc_interrupt_var ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(vlc_interrupt_t *ctx,
                                  void (*cb)(void *), void *data)
{
    FUNC0(ctx != NULL);
    FUNC0(ctx == vlc_interrupt_var);

    FUNC2(&ctx->lock);
    FUNC0(ctx->callback == NULL);
    ctx->callback = cb;
    ctx->data = data;

    if (FUNC1(ctx->interrupted))
        cb(data);
    FUNC3(&ctx->lock);
}