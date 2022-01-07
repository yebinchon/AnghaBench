
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int alen; TYPE_1__** active; } ;
typedef TYPE_2__ fz_gel ;
typedef int fz_context ;
struct TYPE_5__ {int x; scalar_t__ ydir; } ;


 int add_span_aa (int *,TYPE_2__*,int*,int,int,int,int) ;

__attribute__((used)) static inline void
non_zero_winding_aa(fz_context *ctx, fz_gel *gel, int *list, int xofs, int h)
{
 int winding = 0;
 int x = 0;
 int i;

 for (i = 0; i < gel->alen; i++)
 {
  if (!winding && (winding + gel->active[i]->ydir))
   x = gel->active[i]->x;
  if (winding && !(winding + gel->active[i]->ydir))
   add_span_aa(ctx, gel, list, x, gel->active[i]->x, xofs, h);
  winding += gel->active[i]->ydir;
 }
}
