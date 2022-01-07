
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


 int fz_dash_bezier (int *,TYPE_2__*,float,float,float,float,float,float,float,float,int ) ;

__attribute__((used)) static void
dash_curveto(fz_context *ctx, void *s_, float x1, float y1, float x2, float y2, float x3, float y3)
{
 sctx *s = (sctx *)s_;

 fz_dash_bezier(ctx, s, s->cur.x, s->cur.y, x1, y1, x2, y2, x3, y3, 0);
 s->cur.x = x3;
 s->cur.y = y3;
}
