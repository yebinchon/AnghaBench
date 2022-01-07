
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ BuildCtx ;


 char* LABEL_PREFIX_LIBINIT ;
 int LIBINIT_END ;
 int fprintf (int ,char*,...) ;
 int modname ;
 int modstate ;
 int* obuf ;
 int const* optr ;
 scalar_t__ sprintf (char*,char*,int const) ;

__attribute__((used)) static void libdef_endmodule(BuildCtx *ctx)
{
  if (modstate != 0) {
    char line[80];
    const uint8_t *p;
    int n;
    if (modstate == 1)
      fprintf(ctx->fp, "  (lua_CFunction)0");
    fprintf(ctx->fp, "\n};\n");
    fprintf(ctx->fp, "static const uint8_t %s%s[] = {\n",
     LABEL_PREFIX_LIBINIT, modname);
    line[0] = '\0';
    for (n = 0, p = obuf; p < optr; p++) {
      n += sprintf(line+n, "%d,", *p);
      if (n >= 75) {
 fprintf(ctx->fp, "%s\n", line);
 n = 0;
 line[0] = '\0';
      }
    }
    fprintf(ctx->fp, "%s%d\n};\n#endif\n\n", line, LIBINIT_END);
  }
}
