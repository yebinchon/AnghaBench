
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {struct TYPE_5__* samples; int refs; } ;
typedef TYPE_1__ fz_bitmap ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_bitmap(fz_context *ctx, fz_bitmap *bit)
{
 if (fz_drop_imp(ctx, bit, &bit->refs))
 {
  fz_free(ctx, bit->samples);
  fz_free(ctx, bit);
 }
}
