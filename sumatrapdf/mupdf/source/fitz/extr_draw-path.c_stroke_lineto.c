
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


 int fz_stroke_lineto (int *,TYPE_2__*,float,float,int ) ;

__attribute__((used)) static void
stroke_lineto(fz_context *ctx, void *s_, float x, float y)
{
 sctx *s = (sctx *)s_;

 fz_stroke_lineto(ctx, s, x, y, 0);
 s->cur.x = x;
 s->cur.y = y;
}
