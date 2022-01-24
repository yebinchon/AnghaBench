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
struct TYPE_7__ {unsigned char const* digest; } ;
struct TYPE_8__ {unsigned char* outer_padding; TYPE_1__ ctx; } ;
typedef  TYPE_1__ MD5_CTX ;
typedef  TYPE_2__ HMAC_MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void FUNC5(HMAC_MD5_CTX *ctx, const unsigned char *key, unsigned int key_len)
{
    int i;
    unsigned char inner_padding[64];
    unsigned char temp_key[16];

    if(key_len > 64)
    {
        MD5_CTX temp_ctx;

        FUNC1(&temp_ctx);
        FUNC2(&temp_ctx, key, key_len);
        FUNC0(&temp_ctx);
        FUNC3(temp_key, temp_ctx.digest, 16);

        key = temp_key;
        key_len = 16;
    }

    FUNC4(inner_padding, 0, 64);
    FUNC4(ctx->outer_padding, 0, 64);
    FUNC3(inner_padding, key, key_len);
    FUNC3(ctx->outer_padding, key, key_len);

    for(i = 0; i < 64; ++i)
    {
        inner_padding[i] ^= 0x36;
        ctx->outer_padding[i] ^= 0x5c;
    }

    FUNC1(&(ctx->ctx));
    FUNC2(&(ctx->ctx), inner_padding, 64);
}