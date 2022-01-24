#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ avail_out; int avail_in; char* msg; int /*<<< orphan*/  next_in; int /*<<< orphan*/ * next_out; } ;
struct TYPE_4__ {int sec_size; int flags; TYPE_2__ zstrm; int /*<<< orphan*/  in_buf; int /*<<< orphan*/  rc4_key; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ mm_recover_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MMBAK_FLAG_NO_CIPHER ; 
 int MMBAK_RET_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(mm_recover_ctx *ctx, void *buf, uint_t size)
{
    int ret;

    if (size == 0)
        return 0;

    ctx->zstrm.next_out = (uint8_t *) buf;
    ctx->zstrm.avail_out = size;

    do {
        if (ctx->zstrm.avail_in == 0 && ctx->sec_size > 0) {
            ret = (ctx->sec_size > sizeof(ctx->in_buf)) ? sizeof(ctx->in_buf)
                                                        : ctx->sec_size;

            ret = FUNC3(ctx->in_buf, 1, ret, ctx->fp);
            if (ret == 0 && FUNC2(ctx->fp))
                FUNC0("Failed reading stream: %s", FUNC5(errno));
            if (ret > 0) {
                if ((ctx->flags & MMBAK_FLAG_NO_CIPHER) == 0)
                    FUNC1(&ctx->rc4_key, ret, ctx->in_buf, ctx->in_buf);
                ctx->zstrm.next_in = ctx->in_buf;
                ctx->zstrm.avail_in = ret;

                ctx->sec_size -= ret;
            }
        }

        ret = FUNC4(&ctx->zstrm, Z_NO_FLUSH);
        if (ret != Z_OK && ret != Z_STREAM_END)
            FUNC0("Inflate error: %s",
                         ctx->zstrm.msg ? ctx->zstrm.msg : "Unknown");

    } while (ctx->zstrm.avail_out > 0 && ret != Z_STREAM_END);

    return size - ctx->zstrm.avail_out;

bail:
    return MMBAK_RET_FAILED;
}