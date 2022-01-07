
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codesz; int code; } ;
typedef TYPE_1__ BuildCtx ;


 int owrite (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void emit_raw(BuildCtx *ctx)
{
  owrite(ctx, ctx->code, ctx->codesz);
}
