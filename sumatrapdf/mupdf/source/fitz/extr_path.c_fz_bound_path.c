
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_stroke_state ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_3__ {int first; int rect; scalar_t__ trailing_move; int ctm; } ;
typedef TYPE_1__ bound_path_arg ;


 int bound_path_walker ;
 int fz_adjust_rect_for_stroke (int *,int ,int const*,int ) ;
 int fz_empty_rect ;
 int fz_walk_path (int *,int const*,int *,TYPE_1__*) ;

fz_rect
fz_bound_path(fz_context *ctx, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm)
{
 bound_path_arg arg;

 arg.ctm = ctm;
 arg.rect = fz_empty_rect;
 arg.trailing_move = 0;
 arg.first = 1;

 fz_walk_path(ctx, path, &bound_path_walker, &arg);

 if (!arg.first && stroke)
 {
  arg.rect = fz_adjust_rect_for_stroke(ctx, arg.rect, stroke, ctm);
 }

 return arg.rect;
}
