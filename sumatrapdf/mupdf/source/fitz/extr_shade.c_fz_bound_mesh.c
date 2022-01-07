
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_rect ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ FZ_FUNCTION_BASED ;
 scalar_t__ FZ_LINEAR ;
 scalar_t__ FZ_MESH_TYPE4 ;
 scalar_t__ FZ_MESH_TYPE5 ;
 scalar_t__ FZ_MESH_TYPE6 ;
 scalar_t__ FZ_MESH_TYPE7 ;
 scalar_t__ FZ_RADIAL ;
 int fz_bound_mesh_type1 (int *,TYPE_1__*) ;
 int fz_bound_mesh_type2 (int *,TYPE_1__*) ;
 int fz_bound_mesh_type3 (int *,TYPE_1__*) ;
 int fz_bound_mesh_type4567 (int *,TYPE_1__*) ;
 int fz_throw (int *,int ,char*,scalar_t__) ;

__attribute__((used)) static fz_rect
fz_bound_mesh(fz_context *ctx, fz_shade *shade)
{
 if (shade->type == FZ_FUNCTION_BASED)
  return fz_bound_mesh_type1(ctx, shade);
 else if (shade->type == FZ_LINEAR)
  return fz_bound_mesh_type2(ctx, shade);
 else if (shade->type == FZ_RADIAL)
  return fz_bound_mesh_type3(ctx, shade);
 else if (shade->type == FZ_MESH_TYPE4 ||
  shade->type == FZ_MESH_TYPE5 ||
  shade->type == FZ_MESH_TYPE6 ||
  shade->type == FZ_MESH_TYPE7)
  return fz_bound_mesh_type4567(ctx, shade);
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "Unexpected mesh type %d\n", shade->type);
}
