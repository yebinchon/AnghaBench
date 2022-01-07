
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char BuildCtx ;


 int UNUSED (char*) ;
 int regfunc ;

__attribute__((used)) static void libdef_regfunc(BuildCtx *ctx, char *p, int arg)
{
  UNUSED(ctx); UNUSED(p);
  regfunc = arg;
}
