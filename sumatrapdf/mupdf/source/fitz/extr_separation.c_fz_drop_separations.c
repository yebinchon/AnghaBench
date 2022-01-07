
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_separations; int * cs; struct TYPE_5__** name; int refs; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;


 int fz_drop_colorspace (int *,int ) ;
 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void fz_drop_separations(fz_context *ctx, fz_separations *sep)
{
 if (fz_drop_imp(ctx, sep, &sep->refs))
 {
  int i;
  for (i = 0; i < sep->num_separations; i++)
  {
   fz_free(ctx, sep->name[i]);
   fz_drop_colorspace(ctx, sep->cs[i]);
  }
  fz_free(ctx, sep);
 }
}
