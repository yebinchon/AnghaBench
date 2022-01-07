
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_2__ {int trailing_move; int ctm; int move; } ;
typedef TYPE_1__ bound_path_arg ;


 int fz_transform_point_xy (float,float,int ) ;

__attribute__((used)) static void
bound_moveto(fz_context *ctx, void *arg_, float x, float y)
{
 bound_path_arg *arg = (bound_path_arg *)arg_;
 arg->move = fz_transform_point_xy(x, y, arg->ctm);
 arg->trailing_move = 1;
}
