
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int tmp ;
typedef int X ;
struct TYPE_7__ {size_t bCnt; int hashBitLen; int * T; } ;
struct TYPE_6__ {int * X; TYPE_3__ h; int * b; } ;
typedef TYPE_1__ Skein_512_Ctxt_t ;


 int OUT_FINAL ;
 size_t SKEIN_512_BLOCK_BYTES ;
 int SKEIN_512_STATE_WORDS ;
 int SKEIN_FAIL ;
 int SKEIN_SUCCESS ;
 int SKEIN_T1_FLAG_FINAL ;
 int Skein_512_Process_Block (TYPE_1__*,int *,int,int) ;
 int Skein_Assert (int,int ) ;
 int Skein_Put64_LSB_First (int *,int *,size_t) ;
 int Skein_Show_Final (int,TYPE_3__*,size_t,int *) ;
 int Skein_Start_New_Type (TYPE_1__*,int ) ;
 int Skein_Swap64 (int ) ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;

int
Skein_512_Final(Skein_512_Ctxt_t *ctx, uint8_t *hashVal)
{
 size_t i, n, byteCnt;
 uint64_t X[SKEIN_512_STATE_WORDS];


 Skein_Assert(ctx->h.bCnt <= SKEIN_512_BLOCK_BYTES, SKEIN_FAIL);

 ctx->h.T[1] |= SKEIN_T1_FLAG_FINAL;

 if (ctx->h.bCnt < SKEIN_512_BLOCK_BYTES)
  bzero(&ctx->b[ctx->h.bCnt],
      SKEIN_512_BLOCK_BYTES - ctx->h.bCnt);


 Skein_512_Process_Block(ctx, ctx->b, 1, ctx->h.bCnt);



 byteCnt = (ctx->h.hashBitLen + 7) >> 3;



 bzero(ctx->b, sizeof (ctx->b));

 bcopy(ctx->X, X, sizeof (X));
 for (i = 0; i * SKEIN_512_BLOCK_BYTES < byteCnt; i++) {

  uint64_t tmp = Skein_Swap64((uint64_t)i);
  bcopy(&tmp, ctx->b, sizeof (tmp));
  Skein_Start_New_Type(ctx, OUT_FINAL);

  Skein_512_Process_Block(ctx, ctx->b, 1, sizeof (uint64_t));

  n = byteCnt - i * SKEIN_512_BLOCK_BYTES;
  if (n >= SKEIN_512_BLOCK_BYTES)
   n = SKEIN_512_BLOCK_BYTES;
  Skein_Put64_LSB_First(hashVal + i * SKEIN_512_BLOCK_BYTES,
      ctx->X, n);
  Skein_Show_Final(512, &ctx->h, n,
      hashVal + i * SKEIN_512_BLOCK_BYTES);

  bcopy(X, ctx->X, sizeof (X));
 }
 return (SKEIN_SUCCESS);
}
