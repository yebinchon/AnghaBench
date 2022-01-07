
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_4__ {size_t datalen; int bitlen; int * data; } ;
typedef TYPE_1__ SHA256_CTX ;
typedef int BYTE ;


 int sha256_transform (TYPE_1__*,int *) ;

void sha256_update(SHA256_CTX *ctx, const BYTE data[], size_t len)
{
 WORD i;

 for (i = 0; i < len; ++i) {
  ctx->data[ctx->datalen] = data[i];
  ctx->datalen++;
  if (ctx->datalen == 64) {
   sha256_transform(ctx, ctx->data);
   ctx->bitlen += 512;
   ctx->datalen = 0;
  }
 }
}
