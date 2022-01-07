
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {float x; float y; } ;
struct TYPE_4__ {float x; float y; } ;
struct TYPE_6__ {int rast; TYPE_2__ b; TYPE_1__ c; int ctm; } ;
typedef TYPE_3__ flatten_arg ;


 int fz_gap_rasterizer (int *,int ) ;
 int line (int *,int ,int ,float,float,float,float) ;

__attribute__((used)) static void
flatten_moveto(fz_context *ctx, void *arg_, float x, float y)
{
 flatten_arg *arg = (flatten_arg *)arg_;


 if (arg->c.x != arg->b.x || arg->c.y != arg->b.y)
  line(ctx, arg->rast, arg->ctm, arg->c.x, arg->c.y, arg->b.x, arg->b.y);
 arg->c.x = arg->b.x = x;
 arg->c.y = arg->b.y = y;

 fz_gap_rasterizer(ctx, arg->rast);
}
