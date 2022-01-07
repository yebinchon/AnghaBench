
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stroke_state ;
typedef int fz_context ;


 int * fz_new_stroke_state_with_dash_len (int *,int ) ;

fz_stroke_state *
fz_new_stroke_state(fz_context *ctx)
{
 return fz_new_stroke_state_with_dash_len(ctx, 0);
}
