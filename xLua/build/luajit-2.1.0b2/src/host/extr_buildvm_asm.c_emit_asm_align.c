
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int fp; } ;
typedef TYPE_1__ BuildCtx ;





 int fprintf (int ,char*,int) ;

__attribute__((used)) static void emit_asm_align(BuildCtx *ctx, int bits)
{
  switch (ctx->mode) {
  case 129:
  case 130:
    fprintf(ctx->fp, "\t.p2align %d\n", bits);
    break;
  case 128:
    fprintf(ctx->fp, "\t.align %d\n", bits);
    break;
  default:
    break;
  }
}
