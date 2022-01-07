
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ BuildCtx ;


 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 size_t fwrite (void const*,int,size_t,int ) ;
 int stderr ;
 char* strerror (int ) ;

void owrite(BuildCtx *ctx, const void *ptr, size_t sz)
{
  if (fwrite(ptr, 1, sz, ctx->fp) != sz) {
    fprintf(stderr, "Error: cannot write to output file: %s\n",
     strerror(errno));
    exit(1);
  }
}
