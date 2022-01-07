
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {TYPE_1__ b; TYPE_2__ c; int ctm; int rast; } ;
typedef TYPE_3__ flatten_arg ;


 int line (int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
flatten_close(fz_context *ctx, void *arg_)
{
 flatten_arg *arg = (flatten_arg *)arg_;

 line(ctx, arg->rast, arg->ctm, arg->c.x, arg->c.y, arg->b.x, arg->b.y);
 arg->c.x = arg->b.x;
 arg->c.y = arg->b.y;
}
