
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; } ;
struct TYPE_5__ {TYPE_1__ cur; } ;
typedef TYPE_2__ sctx ;
typedef int fz_context ;


 int fz_stroke_quad (int *,TYPE_2__*,float,float,float,float,float,float,int ) ;

__attribute__((used)) static void
stroke_quadto(fz_context *ctx, void *s_, float x1, float y1, float x2, float y2)
{
 sctx *s = (sctx *)s_;

 fz_stroke_quad(ctx, s, s->cur.x, s->cur.y, x1, y1, x2, y2, 0);
 s->cur.x = x2;
 s->cur.y = y2;
}
