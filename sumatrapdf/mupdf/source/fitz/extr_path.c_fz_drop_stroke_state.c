
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refs; } ;
typedef TYPE_1__ fz_stroke_state ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_stroke_state(fz_context *ctx, const fz_stroke_state *strokec)
{
 fz_stroke_state *stroke = (fz_stroke_state *)strokec;

 if (fz_drop_imp(ctx, stroke, &stroke->refs))
  fz_free(ctx, stroke);
}
