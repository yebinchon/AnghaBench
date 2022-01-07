
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {TYPE_1__* sym; int nsym; } ;
struct TYPE_5__ {scalar_t__ ofs; int name; } ;
typedef TYPE_2__ BuildCtx ;


 int sym_decorate (TYPE_2__*,char const*,char const*) ;

__attribute__((used)) static void sym_insert(BuildCtx *ctx, int32_t ofs,
         const char *prefix, const char *suffix)
{
  ptrdiff_t i = ctx->nsym++;
  while (i > 0) {
    if (ctx->sym[i-1].ofs <= ofs)
      break;
    ctx->sym[i] = ctx->sym[i-1];
    i--;
  }
  ctx->sym[i].ofs = ofs;
  ctx->sym[i].name = sym_decorate(ctx, prefix, suffix);
}
