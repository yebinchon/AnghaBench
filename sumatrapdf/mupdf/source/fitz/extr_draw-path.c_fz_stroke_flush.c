
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sn; scalar_t__ dot; int rast; TYPE_2__* beg; TYPE_1__* seg; } ;
typedef TYPE_3__ sctx ;
typedef int fz_linecap ;
typedef int fz_context ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;


 scalar_t__ NULL_LINE ;
 int fz_add_line_cap (int *,TYPE_3__*,int ,int ,int ,int ,int ,int) ;
 int fz_add_line_dot (int *,TYPE_3__*,int ,int ) ;
 int fz_gap_rasterizer (int *,int ) ;

__attribute__((used)) static void
fz_stroke_flush(fz_context *ctx, sctx *s, fz_linecap start_cap, fz_linecap end_cap)
{
 if (s->sn == 2)
 {
  fz_add_line_cap(ctx, s, s->beg[1].x, s->beg[1].y, s->beg[0].x, s->beg[0].y, start_cap, 2);
  fz_add_line_cap(ctx, s, s->seg[0].x, s->seg[0].y, s->seg[1].x, s->seg[1].y, end_cap, 0);
 }
 else if (s->dot == NULL_LINE)
  fz_add_line_dot(ctx, s, s->beg[0].x, s->beg[0].y);
 fz_gap_rasterizer(ctx, s->rast);
}
