
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int bbox; int matrix; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 scalar_t__ FZ_LINEAR ;
 scalar_t__ FZ_RADIAL ;
 int fz_bound_mesh (int *,TYPE_1__*) ;
 int fz_concat (int ,int ) ;
 int fz_intersect_rect (int ,int ) ;
 int fz_transform_rect (int ,int ) ;

fz_rect
fz_bound_shade(fz_context *ctx, fz_shade *shade, fz_matrix ctm)
{
 ctm = fz_concat(shade->matrix, ctm);
 if (shade->type != FZ_LINEAR && shade->type != FZ_RADIAL)
 {
  fz_rect rect = fz_bound_mesh(ctx, shade);
  rect = fz_intersect_rect(rect, shade->bbox);
  return fz_transform_rect(rect, ctm);
 }
 return fz_transform_rect(shade->bbox, ctm);
}
