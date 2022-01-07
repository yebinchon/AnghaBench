
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t bCnt; int * T; } ;
struct TYPE_6__ {int X; TYPE_1__ h; int * b; } ;
typedef TYPE_2__ Skein_512_Ctxt_t ;


 size_t SKEIN_512_BLOCK_BYTES ;
 int SKEIN_FAIL ;
 int SKEIN_SUCCESS ;
 int SKEIN_T1_FLAG_FINAL ;
 int Skein_512_Process_Block (TYPE_2__*,int *,int,size_t) ;
 int Skein_Assert (int,int ) ;
 int Skein_Put64_LSB_First (int *,int ,size_t) ;
 int bzero (int *,size_t) ;

int
Skein_512_Final_Pad(Skein_512_Ctxt_t *ctx, uint8_t *hashVal)
{

 Skein_Assert(ctx->h.bCnt <= SKEIN_512_BLOCK_BYTES, SKEIN_FAIL);

 ctx->h.T[1] |= SKEIN_T1_FLAG_FINAL;

 if (ctx->h.bCnt < SKEIN_512_BLOCK_BYTES)
  bzero(&ctx->b[ctx->h.bCnt],
      SKEIN_512_BLOCK_BYTES - ctx->h.bCnt);

 Skein_512_Process_Block(ctx, ctx->b, 1, ctx->h.bCnt);


 Skein_Put64_LSB_First(hashVal, ctx->X, SKEIN_512_BLOCK_BYTES);

 return (SKEIN_SUCCESS);
}
