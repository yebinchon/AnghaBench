
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t bCnt; } ;
struct TYPE_6__ {TYPE_1__ h; int const* b; } ;
typedef TYPE_2__ Skein1024_Ctxt_t ;


 size_t SKEIN1024_BLOCK_BYTES ;
 int SKEIN_FAIL ;
 int SKEIN_SUCCESS ;
 int Skein1024_Process_Block (TYPE_2__*,int const*,size_t,size_t) ;
 int Skein_Assert (int,int ) ;
 int Skein_assert (int) ;
 int bcopy (int const*,int const*,size_t) ;

int
Skein1024_Update(Skein1024_Ctxt_t *ctx, const uint8_t *msg, size_t msgByteCnt)
{
 size_t n;


 Skein_Assert(ctx->h.bCnt <= SKEIN1024_BLOCK_BYTES, SKEIN_FAIL);


 if (msgByteCnt + ctx->h.bCnt > SKEIN1024_BLOCK_BYTES) {

  if (ctx->h.bCnt) {

   n = SKEIN1024_BLOCK_BYTES - ctx->h.bCnt;
   if (n) {

    Skein_assert(n < msgByteCnt);
    bcopy(msg, &ctx->b[ctx->h.bCnt], n);
    msgByteCnt -= n;
    msg += n;
    ctx->h.bCnt += n;
   }
   Skein_assert(ctx->h.bCnt == SKEIN1024_BLOCK_BYTES);
   Skein1024_Process_Block(ctx, ctx->b, 1,
       SKEIN1024_BLOCK_BYTES);
   ctx->h.bCnt = 0;
  }




  if (msgByteCnt > SKEIN1024_BLOCK_BYTES) {

   n = (msgByteCnt - 1) / SKEIN1024_BLOCK_BYTES;
   Skein1024_Process_Block(ctx, msg, n,
       SKEIN1024_BLOCK_BYTES);
   msgByteCnt -= n * SKEIN1024_BLOCK_BYTES;
   msg += n * SKEIN1024_BLOCK_BYTES;
  }
  Skein_assert(ctx->h.bCnt == 0);
 }


 if (msgByteCnt) {
  Skein_assert(msgByteCnt + ctx->h.bCnt <= SKEIN1024_BLOCK_BYTES);
  bcopy(msg, &ctx->b[ctx->h.bCnt], msgByteCnt);
  ctx->h.bCnt += msgByteCnt;
 }

 return (SKEIN_SUCCESS);
}
