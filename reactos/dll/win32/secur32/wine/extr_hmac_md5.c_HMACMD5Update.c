
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ HMAC_MD5_CTX ;


 int MD5Update (int *,unsigned char const*,unsigned int) ;

void HMACMD5Update(HMAC_MD5_CTX *ctx, const unsigned char *data, unsigned int data_len)
{
    MD5Update(&(ctx->ctx), data, data_len);
}
