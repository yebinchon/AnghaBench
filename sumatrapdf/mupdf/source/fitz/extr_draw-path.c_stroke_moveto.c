
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {float x; float y; } ;
struct TYPE_8__ {TYPE_2__ cur; TYPE_1__* stroke; } ;
typedef TYPE_3__ sctx ;
typedef int fz_context ;
struct TYPE_6__ {int end_cap; int start_cap; } ;


 int fz_stroke_flush (int *,TYPE_3__*,int ,int ) ;
 int fz_stroke_moveto (int *,TYPE_3__*,float,float) ;

__attribute__((used)) static void
stroke_moveto(fz_context *ctx, void *s_, float x, float y)
{
 sctx *s = (sctx *)s_;

 fz_stroke_flush(ctx, s, s->stroke->start_cap, s->stroke->end_cap);
 fz_stroke_moveto(ctx, s, x, y);
 s->cur.x = x;
 s->cur.y = y;
}
