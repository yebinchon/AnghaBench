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
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct mm_backup_buffer {scalar_t__ avail; scalar_t__ data; } ;
struct TYPE_3__ {int in_full; int in_avail; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  buf_cond; struct mm_backup_buffer* p_buf; scalar_t__ write_error; int /*<<< orphan*/  canceled; } ;
typedef  TYPE_1__ mm_backup_ctx ;

/* Variables and functions */
 scalar_t__ INPUT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(mm_backup_ctx *ctx, const void *data, uint_t size)
{
    struct mm_backup_buffer *p_buf;
    const uint8_t *p_data = (const uint8_t *) data;

    FUNC4(&ctx->buf_lock);
    while (size > 0) {
        while (ctx->in_full && !ctx->canceled && !ctx->write_error)
            FUNC3(&ctx->buf_cond, &ctx->buf_lock);

        if (ctx->write_error) {
            FUNC5(&ctx->buf_lock);
            FUNC0("Writing thread reported error.");
            return -1;
        }

        p_buf = ctx->p_buf;

        uint_t size_to_write = (p_buf->avail + size > INPUT_BUFFER_SIZE)
                                   ? INPUT_BUFFER_SIZE - p_buf->avail
                                   : size;
        FUNC1(p_buf->data + p_buf->avail, p_data, size_to_write);
        size -= size_to_write;
        p_buf->avail += size_to_write;
        p_data += size_to_write;

        ctx->in_avail = p_buf->avail > INPUT_BUFFER_SIZE / 4;
        ctx->in_full = p_buf->avail == INPUT_BUFFER_SIZE;
        if (ctx->in_avail || ctx->in_full)
            FUNC2(&ctx->buf_cond);
    }
    FUNC5(&ctx->buf_lock);
    return 0;
}