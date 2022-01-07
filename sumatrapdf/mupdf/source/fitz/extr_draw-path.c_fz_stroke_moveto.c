
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctx {int sn; scalar_t__ from_bezier; int dot; TYPE_1__* beg; TYPE_2__* seg; } ;
typedef int fz_context ;
struct TYPE_4__ {float x; float y; } ;
struct TYPE_3__ {float x; float y; } ;


 int ONLY_MOVES ;

__attribute__((used)) static void
fz_stroke_moveto(fz_context *ctx, void *s_, float x, float y)
{
 struct sctx *s = (struct sctx *)s_;

 s->seg[0].x = s->beg[0].x = x;
 s->seg[0].y = s->beg[0].y = y;
 s->sn = 1;
 s->dot = ONLY_MOVES;
 s->from_bezier = 0;
}
