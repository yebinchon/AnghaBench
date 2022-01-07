
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


 int quad (int *,int ,int ,int ,float,float,float,float,float,float,int ) ;

__attribute__((used)) static void
flatten_quadto(fz_context *ctx, void *arg_, float x1, float y1, float x2, float y2)
{
 flatten_arg *arg = (flatten_arg *)arg_;

 quad(ctx, arg->rast, arg->ctm, arg->flatness, arg->c.x, arg->c.y, x1, y1, x2, y2, 0);
 arg->c.x = x2;
 arg->c.y = y2;
}
