
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sn; scalar_t__ dot; int rast; scalar_t__ from_bezier; TYPE_1__* beg; TYPE_1__* seg; } ;
typedef TYPE_2__ sctx ;
typedef int fz_context ;
struct TYPE_7__ {int y; int x; } ;


 scalar_t__ NULL_LINE ;
 scalar_t__ ONLY_MOVES ;
 int fz_add_line_dot (int *,TYPE_2__*,int ,int ) ;
 int fz_add_line_join (int *,TYPE_2__*,int ,int ,int ,int ,int ,int ,int ) ;
 int fz_gap_rasterizer (int *,int ) ;
 int fz_stroke_lineto (int *,TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void
fz_stroke_closepath(fz_context *ctx, sctx *s)
{
 if (s->sn == 2)
 {
  fz_stroke_lineto(ctx, s, s->beg[0].x, s->beg[0].y, 0);
  fz_add_line_join(ctx, s, s->seg[0].x, s->seg[0].y, s->beg[0].x, s->beg[0].y, s->beg[1].x, s->beg[1].y, 0);
 }
 else if (s->dot == NULL_LINE)
  fz_add_line_dot(ctx, s, s->beg[0].x, s->beg[0].y);

 s->seg[0] = s->beg[0];
 s->sn = 1;
 s->dot = ONLY_MOVES;
 s->from_bezier = 0;

 fz_gap_rasterizer(ctx, s->rast);
}
