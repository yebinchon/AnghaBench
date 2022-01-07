
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ (* wfunc ) (int ,int *,int,int ) ;int wdata; int sb; } ;
typedef TYPE_1__ BCWriteCtx ;


 int sbufL (int *) ;
 scalar_t__ stub1 (int ,int *,int,int ) ;

__attribute__((used)) static void bcwrite_footer(BCWriteCtx *ctx)
{
  if (ctx->status == 0) {
    uint8_t zero = 0;
    ctx->status = ctx->wfunc(sbufL(&ctx->sb), &zero, 1, ctx->wdata);
  }
}
