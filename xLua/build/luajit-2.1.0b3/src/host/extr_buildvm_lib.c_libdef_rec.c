
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ mode; int fp; } ;
typedef TYPE_1__ BuildCtx ;


 scalar_t__ BUILD_recdef ;
 int UNUSED (int) ;
 scalar_t__ ffid ;
 int find_rec (char*) ;
 int fprintf (int ,char*,...) ;
 char* funcname ;
 scalar_t__ recffid ;
 char* strchr (char*,char) ;

__attribute__((used)) static void libdef_rec(BuildCtx *ctx, char *p, int arg)
{
  UNUSED(arg);
  if (ctx->mode == BUILD_recdef) {
    char *q;
    uint32_t n;
    for (; recffid+1 < ffid; recffid++)
      fprintf(ctx->fp, ",\n0");
    recffid = ffid;
    if (*p == '.') p = funcname;
    q = strchr(p, ' ');
    if (q) *q++ = '\0';
    n = find_rec(p);
    if (q)
      fprintf(ctx->fp, ",\n0x%02x00+(%s)", n, q);
    else
      fprintf(ctx->fp, ",\n0x%02x00", n);
  }
}
