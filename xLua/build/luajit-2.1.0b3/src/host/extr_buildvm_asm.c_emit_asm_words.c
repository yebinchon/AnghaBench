
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ BuildCtx ;


 int fprintf (int ,char*,int) ;
 int lj_bswap (int) ;
 int putc (char,int ) ;

__attribute__((used)) static void emit_asm_words(BuildCtx *ctx, uint8_t *p, int n)
{
  int i;
  for (i = 0; i < n; i += 4) {
    uint32_t ins = *(uint32_t *)(p+i);



    if ((i & 15) == 0)
      fprintf(ctx->fp, "\t.long 0x%08x", ins);
    else
      fprintf(ctx->fp, ",0x%08x", ins);
    if ((i & 15) == 12) putc('\n', ctx->fp);
  }
  if ((n & 15) != 0) putc('\n', ctx->fp);
}
