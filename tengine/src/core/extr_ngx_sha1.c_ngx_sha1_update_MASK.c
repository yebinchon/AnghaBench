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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int bytes; void const* buffer; } ;
typedef  TYPE_1__ ngx_sha1_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void const*,size_t) ; 
 void* FUNC1 (TYPE_1__*,void const*,size_t) ; 

void
FUNC2(ngx_sha1_t *ctx, const void *data, size_t size)
{
    size_t  used, free;

    used = (size_t) (ctx->bytes & 0x3f);
    ctx->bytes += size;

    if (used) {
        free = 64 - used;

        if (size < free) {
            FUNC0(&ctx->buffer[used], data, size);
            return;
        }

        FUNC0(&ctx->buffer[used], data, free);
        data = (u_char *) data + free;
        size -= free;
        (void) FUNC1(ctx, ctx->buffer, 64);
    }

    if (size >= 64) {
        data = FUNC1(ctx, data, size & ~(size_t) 0x3f);
        size &= 0x3f;
    }

    FUNC0(ctx->buffer, data, size);
}