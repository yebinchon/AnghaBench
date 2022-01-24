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
struct TYPE_3__ {int in_finish; int /*<<< orphan*/  buf_cond; int /*<<< orphan*/  buf_lock; scalar_t__ write_error; } ;
typedef  TYPE_1__ mm_backup_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(mm_backup_ctx *ctx)
{
    int ret;

    // flush padding input.
    FUNC2(&ctx->buf_lock);
    {
        ctx->in_finish = 1;
        if (ctx->write_error) {
            FUNC0("Writing thread reported error.");
            ret = -1;
        } else
            ret = 0;
    }
    FUNC3(&ctx->buf_lock);
    FUNC1(&ctx->buf_cond);

    return ret;
}