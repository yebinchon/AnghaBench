
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int digest; } ;
struct TYPE_8__ {unsigned char* outer_padding; TYPE_1__ ctx; } ;
typedef TYPE_1__ MD5_CTX ;
typedef TYPE_2__ HMAC_MD5_CTX ;


 int MD5Final (TYPE_1__*) ;
 int MD5Init (TYPE_1__*) ;
 int MD5Update (TYPE_1__*,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;

void HMACMD5Final(HMAC_MD5_CTX *ctx, unsigned char *digest)
{
    MD5_CTX outer_ctx;
    unsigned char inner_digest[16];

    MD5Final(&(ctx->ctx));
    memcpy(inner_digest, ctx->ctx.digest, 16);

    MD5Init(&outer_ctx);
    MD5Update(&outer_ctx, ctx->outer_padding, 64);
    MD5Update(&outer_ctx, inner_digest, 16);
    MD5Final(&outer_ctx);

    memcpy(digest, outer_ctx.digest, 16);
}
