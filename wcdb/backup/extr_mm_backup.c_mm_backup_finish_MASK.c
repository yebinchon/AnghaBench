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
struct TYPE_4__ {int canceled; int /*<<< orphan*/  zstrm; scalar_t__ fp; int /*<<< orphan*/  buf_cond; int /*<<< orphan*/  buf_lock; struct TYPE_4__* tabdesc; int /*<<< orphan*/  write_thread; } ;
typedef  TYPE_1__ mm_backup_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(mm_backup_ctx *ctx)
{
    if (!ctx->canceled) {
        ctx->canceled = 1;
        FUNC3(&ctx->buf_cond);
        FUNC5(ctx->write_thread);
    }

    FUNC2(ctx->tabdesc);
    FUNC6(&ctx->buf_lock);
    FUNC4(&ctx->buf_cond);

    if (ctx->fp)
        FUNC1(ctx->fp);
    FUNC0(&ctx->zstrm);
    FUNC2(ctx);
}