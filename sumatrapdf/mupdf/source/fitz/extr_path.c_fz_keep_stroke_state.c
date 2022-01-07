
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int refs; } ;
typedef TYPE_1__ fz_stroke_state ;
typedef int fz_context ;


 TYPE_1__* fz_clone_stroke_state (int *,TYPE_1__*) ;
 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int*) ;

fz_stroke_state *
fz_keep_stroke_state(fz_context *ctx, const fz_stroke_state *strokec)
{
 fz_stroke_state *stroke = (fz_stroke_state *)strokec;

 if (!stroke)
  return ((void*)0);


 if (stroke->refs == -2)
  return fz_clone_stroke_state(ctx, stroke);

 return fz_keep_imp(ctx, stroke, &stroke->refs);
}
