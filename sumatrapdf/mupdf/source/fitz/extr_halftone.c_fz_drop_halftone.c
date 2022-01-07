
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; int * comp; int refs; } ;
typedef TYPE_1__ fz_halftone ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_drop_pixmap (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_halftone(fz_context *ctx, fz_halftone *ht)
{
 int i;
 if (fz_drop_imp(ctx, ht, &ht->refs))
 {
  for (i = 0; i < ht->n; i++)
   fz_drop_pixmap(ctx, ht->comp[i]);
  fz_free(ctx, ht);
 }
}
