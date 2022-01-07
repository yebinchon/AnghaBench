
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_rasterizer ;
struct TYPE_3__ {int len; TYPE_2__* edges; } ;
typedef TYPE_1__ fz_gel ;
struct TYPE_4__ {scalar_t__ y; scalar_t__ h; scalar_t__ xmove; scalar_t__ adj_up; } ;
typedef TYPE_2__ fz_edge ;
typedef int fz_context ;



__attribute__((used)) static int
fz_is_rect_gel(fz_context *ctx, fz_rasterizer *ras)
{
 fz_gel *gel = (fz_gel *)ras;

 if (gel->len == 2)
 {
  fz_edge *a = gel->edges + 0;
  fz_edge *b = gel->edges + 1;
  return a->y == b->y && a->h == b->h &&
   a->xmove == 0 && a->adj_up == 0 &&
   b->xmove == 0 && b->adj_up == 0;
 }
 return 0;
}
