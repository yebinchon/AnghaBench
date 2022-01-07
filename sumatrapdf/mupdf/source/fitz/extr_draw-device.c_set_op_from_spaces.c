
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int alpha; int s; int seps; int * colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_context ;
typedef int fz_colorspace ;


 char* fz_colorspace_colorant (int *,int *,int) ;
 int fz_colorspace_is_subtractive (int *,int *) ;
 int fz_colorspace_n (int *,int *) ;
 char* fz_separation_name (int *,int ,int) ;
 int fz_set_overprint (int *,int) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static fz_overprint *
set_op_from_spaces(fz_context *ctx, fz_overprint *op, const fz_pixmap *dest, fz_colorspace *src, int opm)
{
 int dn, sn, i, j, dc;

 if (!op)
  return ((void*)0);

 if (!fz_colorspace_is_subtractive(ctx, src) || !fz_colorspace_is_subtractive(ctx, dest->colorspace))
  return ((void*)0);

 sn = fz_colorspace_n(ctx, src);
 dn = dest->n - dest->alpha;
 dc = dn - dest->s;






 for (j = 0; j < sn; j++)
 {


  const char *sname = fz_colorspace_colorant(ctx, src, j);
  if (!sname)
   break;
  if (!strcmp(sname, "All") || !strcmp(sname, "None"))
   continue;
  for (i = 0; i < dc; i++)
  {
   const char *name = fz_colorspace_colorant(ctx, dest->colorspace, i);
   if (!name)
    continue;
   if (!strcmp(name, sname))
    break;
  }
  if (i != dc)
   continue;
  for (; i < dn; i++)
  {
   const char *name = fz_separation_name(ctx, dest->seps, i - dc);
   if (!name)
    continue;
   if (!strcmp(name, sname))
    break;
  }
  if (i == dn)
  {

   break;
  }
 }
 if (j == sn)
 {


  for (i = 0; i < dc; i++)
  {
   const char *name = fz_colorspace_colorant(ctx, dest->colorspace, i);

   for (j = 0; j < sn; j++)
   {
    const char *sname = fz_colorspace_colorant(ctx, src, j);
    if (!name || !sname)
     continue;
    if (!strcmp(name, sname))
     break;
    if (!strcmp(sname, "All"))
     break;
   }
   if (j == sn)
    fz_set_overprint(op, i);
  }
 }
 for (i = dc; i < dn; i++)
 {
  const char *name = fz_separation_name(ctx, dest->seps, i - dc);

  for (j = 0; j < sn; j++)
  {
   const char *sname = fz_colorspace_colorant(ctx, src, j);
   if (!name || !sname)
    continue;
   if (!strcmp(name, sname))
    break;
   if (!strcmp(sname, "All"))
    break;
  }
  if (j == sn)
   fz_set_overprint(op, i);
 }

 return op;
}
