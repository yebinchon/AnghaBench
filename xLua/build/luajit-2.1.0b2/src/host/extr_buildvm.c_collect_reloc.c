
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {size_t nreloc; scalar_t__ nrelocsym; int * code; TYPE_1__* reloc; int * relocsym; } ;
struct TYPE_5__ {int type; scalar_t__ sym; scalar_t__ ofs; } ;
typedef TYPE_2__ BuildCtx ;


 size_t BUILD_MAX_RELOC ;
 int exit (int) ;
 int * extnames ;
 int fprintf (int ,char*) ;
 scalar_t__* relocmap ;
 int stderr ;
 int sym_decorate (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int collect_reloc(BuildCtx *ctx, uint8_t *addr, int idx, int type)
{
  if (ctx->nreloc >= BUILD_MAX_RELOC) {
    fprintf(stderr, "Error: too many relocations, increase BUILD_MAX_RELOC.\n");
    exit(1);
  }
  if (relocmap[idx] < 0) {
    relocmap[idx] = ctx->nrelocsym;
    ctx->relocsym[ctx->nrelocsym] = sym_decorate(ctx, "", extnames[idx]);
    ctx->nrelocsym++;
  }
  ctx->reloc[ctx->nreloc].ofs = (int32_t)(addr - ctx->code);
  ctx->reloc[ctx->nreloc].sym = relocmap[idx];
  ctx->reloc[ctx->nreloc].type = type;
  ctx->nreloc++;



  return 0;

}
