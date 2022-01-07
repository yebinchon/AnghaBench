
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_context ;
struct TYPE_8__ {int y1; int y0; int x1; int x0; } ;
struct TYPE_7__ {TYPE_1__ move; TYPE_4__ rect; scalar_t__ trailing_move; int ctm; scalar_t__ first; } ;
typedef TYPE_2__ bound_path_arg ;


 int bound_expand (TYPE_4__*,TYPE_1__) ;
 TYPE_1__ fz_transform_point_xy (float,float,int ) ;

__attribute__((used)) static void
bound_curveto(fz_context *ctx, void *arg_, float x1, float y1, float x2, float y2, float x3, float y3)
{
 bound_path_arg *arg = (bound_path_arg *)arg_;
 fz_point p = fz_transform_point_xy(x1, y1, arg->ctm);
 if (arg->first)
 {
  arg->rect.x0 = arg->rect.x1 = p.x;
  arg->rect.y0 = arg->rect.y1 = p.y;
  arg->first = 0;
 }
 else
  bound_expand(&arg->rect, p);
 bound_expand(&arg->rect, fz_transform_point_xy(x2, y2, arg->ctm));
 bound_expand(&arg->rect, fz_transform_point_xy(x3, y3, arg->ctm));
 if (arg->trailing_move)
 {
  arg->trailing_move = 0;
  bound_expand(&arg->rect, arg->move);
 }
}
