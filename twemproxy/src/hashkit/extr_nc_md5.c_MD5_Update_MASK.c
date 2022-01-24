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
struct TYPE_4__ {unsigned long lo; void* buffer; scalar_t__ hi; } ;
typedef  unsigned long MD5_u32plus ;
typedef  TYPE_1__ MD5_CTX ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned long) ; 

void
FUNC2(MD5_CTX *ctx, void *data, unsigned long size)
{
    MD5_u32plus saved_lo;
    unsigned long used, free;

    saved_lo = ctx->lo;
    if ((ctx->lo = (saved_lo + size) & 0x1fffffff) < saved_lo) {
        ctx->hi++;
    }
    ctx->hi += size >> 29;

    used = saved_lo & 0x3f;

    if (used) {
        free = 64 - used;

        if (size < free) {
            FUNC1(&ctx->buffer[used], data, size);
            return;
        }

        FUNC1(&ctx->buffer[used], data, free);
        data = (unsigned char *)data + free;
        size -= free;
        FUNC0(ctx, ctx->buffer, 64);
    }

    if (size >= 64) {
        data = FUNC0(ctx, data, size & ~(unsigned long)0x3f);
        size &= 0x3f;
    }

    FUNC1(ctx->buffer, data, size);
}