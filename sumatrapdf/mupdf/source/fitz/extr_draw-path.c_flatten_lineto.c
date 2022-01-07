
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {float x; float y; } ;
struct TYPE_4__ {TYPE_1__ c; int ctm; int rast; } ;
typedef TYPE_2__ flatten_arg ;


 int line (int *,int ,int ,float,float,float,float) ;

__attribute__((used)) static void
flatten_lineto(fz_context *ctx, void *arg_, float x, float y)
{
 flatten_arg *arg = (flatten_arg *)arg_;

 line(ctx, arg->rast, arg->ctm, arg->c.x, arg->c.y, x, y);
 arg->c.x = x;
 arg->c.y = y;
}
