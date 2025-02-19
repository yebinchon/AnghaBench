
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; } ;
struct sctx {int toggle; size_t offset; scalar_t__ phase; scalar_t__ dash_phase; scalar_t__* dash_list; size_t dash_len; TYPE_2__* stroke; int cap; TYPE_1__ dash_cur; } ;
typedef int fz_context ;
struct TYPE_4__ {int start_cap; int end_cap; } ;


 int fz_stroke_flush (int *,struct sctx*,int ,int ) ;
 int fz_stroke_moveto (int *,struct sctx*,float,float) ;

__attribute__((used)) static void
fz_dash_moveto(fz_context *ctx, struct sctx *s, float x, float y)
{
 s->toggle = 1;
 s->offset = 0;
 s->phase = s->dash_phase;

 while (s->phase > 0 && s->phase >= s->dash_list[s->offset])
 {
  s->toggle = !s->toggle;
  s->phase -= s->dash_list[s->offset];
  s->offset ++;
  if (s->offset == s->dash_len)
   s->offset = 0;
 }

 s->dash_cur.x = x;
 s->dash_cur.y = y;

 if (s->toggle)
 {
  fz_stroke_flush(ctx, s, s->cap, s->stroke->end_cap);
  s->cap = s->stroke->start_cap;
  fz_stroke_moveto(ctx, s, x, y);
 }
}
