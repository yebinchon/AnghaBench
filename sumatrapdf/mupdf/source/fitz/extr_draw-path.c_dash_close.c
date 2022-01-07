
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_7__ {TYPE_1__ dash_beg; TYPE_2__ cur; } ;
typedef TYPE_3__ sctx ;
typedef int fz_context ;


 int fz_dash_lineto (int *,TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static void
dash_close(fz_context *ctx, void *s_)
{
 sctx *s = (sctx *)s_;

 fz_dash_lineto(ctx, s, s->dash_beg.x, s->dash_beg.y, 0);
 s->cur.x = s->dash_beg.x;
 s->cur.y = s->dash_beg.y;
}
