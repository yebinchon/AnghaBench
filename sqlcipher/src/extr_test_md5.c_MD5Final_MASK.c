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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int* bits; unsigned char* in; int* buf; } ;
typedef  TYPE_1__ MD5Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned char digest[16], MD5Context *ctx){
        unsigned count;
        unsigned char *p;

        /* Compute number of bytes mod 64 */
        count = (ctx->bits[0] >> 3) & 0x3F;

        /* Set the first char of padding to 0x80.  This is safe since there is
           always at least one byte free */
        p = ctx->in + count;
        *p++ = 0x80;

        /* Bytes of padding needed to make 64 bytes */
        count = 64 - 1 - count;

        /* Pad out to 56 mod 64 */
        if (count < 8) {
                /* Two lots of padding:  Pad the first block to 64 bytes */
                FUNC3(p, 0, count);
                FUNC1(ctx->in, 16);
                FUNC0(ctx->buf, (uint32 *)ctx->in);

                /* Now fill the next block with 56 bytes */
                FUNC3(ctx->in, 0, 56);
        } else {
                /* Pad block to 56 bytes */
                FUNC3(p, 0, count-8);
        }
        FUNC1(ctx->in, 14);

        /* Append length in bits and transform */
        FUNC2(ctx->in + 14*4, ctx->bits, 8);

        FUNC0(ctx->buf, (uint32 *)ctx->in);
        FUNC1((unsigned char *)ctx->buf, 4);
        FUNC2(digest, ctx->buf, 16);
}