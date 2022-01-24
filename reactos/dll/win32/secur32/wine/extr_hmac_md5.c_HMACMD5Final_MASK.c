#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  digest; } ;
struct TYPE_8__ {unsigned char* outer_padding; TYPE_1__ ctx; } ;
typedef  TYPE_1__ MD5_CTX ;
typedef  TYPE_2__ HMAC_MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void FUNC4(HMAC_MD5_CTX *ctx, unsigned char *digest)
{
    MD5_CTX outer_ctx;
    unsigned char inner_digest[16];

    FUNC0(&(ctx->ctx));
    FUNC3(inner_digest, ctx->ctx.digest, 16);

    FUNC1(&outer_ctx);
    FUNC2(&outer_ctx, ctx->outer_padding, 64);
    FUNC2(&outer_ctx, inner_digest, 16);
    FUNC0(&outer_ctx);

    FUNC3(digest, outer_ctx.digest, 16);
}