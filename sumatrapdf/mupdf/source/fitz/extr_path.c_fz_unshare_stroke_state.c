
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dash_len; } ;
typedef TYPE_1__ fz_stroke_state ;
typedef int fz_context ;


 TYPE_1__* fz_unshare_stroke_state_with_dash_len (int *,TYPE_1__*,int ) ;

fz_stroke_state *
fz_unshare_stroke_state(fz_context *ctx, fz_stroke_state *shared)
{
 return fz_unshare_stroke_state_with_dash_len(ctx, shared, shared->dash_len);
}
