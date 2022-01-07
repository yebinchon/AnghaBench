
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int args; } ;
struct TYPE_8__ {int isnull; } ;
struct TYPE_7__ {int isnull; } ;
struct TYPE_9__ {void* lookup_after; void* lookup_before; TYPE_2__ next; TYPE_1__ prev; } ;
typedef int GapFillState ;
typedef TYPE_3__ GapFillInterpolateColumnState ;
typedef TYPE_4__ FuncExpr ;


 void* gapfill_adjust_varnos (int *,int ) ;
 int list_length (int ) ;
 int lsecond (int ) ;
 int lthird (int ) ;

void
gapfill_interpolate_initialize(GapFillInterpolateColumnState *interpolate, GapFillState *state,
          FuncExpr *function)
{
 interpolate->prev.isnull = 1;
 interpolate->next.isnull = 1;
 if (list_length(((FuncExpr *) function)->args) > 1)
  interpolate->lookup_before =
   gapfill_adjust_varnos(state, lsecond(((FuncExpr *) function)->args));
 if (list_length(((FuncExpr *) function)->args) > 2)
  interpolate->lookup_after =
   gapfill_adjust_varnos(state, lthird(((FuncExpr *) function)->args));
}
