
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; } ;
struct TYPE_5__ {float x; float y; } ;
struct TYPE_7__ {TYPE_2__ cur; TYPE_1__ dash_beg; } ;
typedef TYPE_3__ sctx ;
typedef int fz_context ;


 int fz_dash_moveto (int *,TYPE_3__*,float,float) ;

__attribute__((used)) static void
dash_moveto(fz_context *ctx, void *s_, float x, float y)
{
 sctx *s = (sctx *)s_;

 fz_dash_moveto(ctx, s, x, y);
 s->dash_beg.x = s->cur.x = x;
 s->dash_beg.y = s->cur.y = y;
}
