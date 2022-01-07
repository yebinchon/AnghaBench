
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {float x; float y; } ;
struct TYPE_4__ {TYPE_1__ c; int flatness; int ctm; int rast; } ;
typedef TYPE_2__ flatten_arg ;


 int bezier (int *,int ,int ,int ,float,float,float,float,float,float,float,float,int ) ;

__attribute__((used)) static void
flatten_curveto(fz_context *ctx, void *arg_, float x1, float y1, float x2, float y2, float x3, float y3)
{
 flatten_arg *arg = (flatten_arg *)arg_;

 bezier(ctx, arg->rast, arg->ctm, arg->flatness, arg->c.x, arg->c.y, x1, y1, x2, y2, x3, y3, 0);
 arg->c.x = x3;
 arg->c.y = y3;
}
