
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int fp; } ;
typedef TYPE_1__ BuildCtx ;


 int BUILD_MAX_FOLD ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int nkeys ;
 int printhash (TYPE_1__*,int*,int) ;
 int stderr ;
 scalar_t__ tryhash (int*,int,int,int) ;

__attribute__((used)) static void makehash(BuildCtx *ctx)
{
  uint32_t htab[BUILD_MAX_FOLD*2+1];
  uint32_t sz, r;

  for (sz = (nkeys|1); sz < BUILD_MAX_FOLD*2; sz += 2) {

    for (r = 0; r < 32*32; r++) {
      if (tryhash(htab, sz, r, 0)) {
 printhash(ctx, htab, sz);
 fprintf(ctx->fp,
  "#define fold_hashkey(k)\t(((((k)<<%u)-(k))<<%u)%%%u)\n\n",
  r>>5, r&31, sz);
 return;
      }
    }

    for (r = 0; r < 32*32; r++) {
      if (tryhash(htab, sz, r, 1)) {
 printhash(ctx, htab, sz);
 fprintf(ctx->fp,
   "#define fold_hashkey(k)\t(lj_rol(lj_rol((k),%u)-(k),%u)%%%u)\n\n",
  r>>5, r&31, sz);
 return;
      }
    }
  }
  fprintf(stderr, "Error: search for perfect hash failed\n");
  exit(1);
}
