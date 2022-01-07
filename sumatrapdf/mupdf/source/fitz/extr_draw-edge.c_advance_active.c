
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alen; TYPE_2__** active; } ;
typedef TYPE_1__ fz_gel ;
struct TYPE_5__ {scalar_t__ h; scalar_t__ e; scalar_t__ adj_up; scalar_t__ adj_down; scalar_t__ xdir; int x; scalar_t__ xmove; } ;
typedef TYPE_2__ fz_edge ;
typedef int fz_context ;



__attribute__((used)) static void
advance_active(fz_context *ctx, fz_gel *gel, int inc)
{
 fz_edge *edge;
 int i = 0;

 while (i < gel->alen)
 {
  edge = gel->active[i];

  edge->h -= inc;


  if (edge->h == 0) {
   gel->active[i] = gel->active[--gel->alen];
  }

  else {
   edge->x += edge->xmove;
   edge->e += edge->adj_up;
   if (edge->e > 0) {
    edge->x += edge->xdir;
    edge->e -= edge->adj_down;
   }
   i ++;
  }
 }
}
