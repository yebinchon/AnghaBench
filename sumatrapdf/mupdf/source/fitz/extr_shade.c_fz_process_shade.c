
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int fz_shade_process_fn ;
typedef int fz_shade_prepare_fn ;
struct TYPE_18__ {scalar_t__ use_function; scalar_t__ type; int colorspace; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_rect ;
struct TYPE_19__ {int ncomp; void* process_arg; int * process; int * prepare; TYPE_1__* shade; } ;
typedef TYPE_2__ fz_mesh_processor ;
typedef int fz_matrix ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ FZ_FUNCTION_BASED ;
 scalar_t__ FZ_LINEAR ;
 scalar_t__ FZ_MESH_TYPE4 ;
 scalar_t__ FZ_MESH_TYPE5 ;
 scalar_t__ FZ_MESH_TYPE6 ;
 scalar_t__ FZ_MESH_TYPE7 ;
 scalar_t__ FZ_RADIAL ;
 int fz_colorspace_n (int *,int ) ;
 int fz_process_shade_type1 (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int fz_process_shade_type2 (int *,TYPE_1__*,int ,TYPE_2__*,int ) ;
 int fz_process_shade_type3 (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int fz_process_shade_type4 (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int fz_process_shade_type5 (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int fz_process_shade_type6 (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int fz_process_shade_type7 (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int fz_throw (int *,int ,char*,scalar_t__) ;

void
fz_process_shade(fz_context *ctx, fz_shade *shade, fz_matrix ctm, fz_rect scissor,
  fz_shade_prepare_fn *prepare, fz_shade_process_fn *process, void *process_arg)
{
 fz_mesh_processor painter;

 painter.shade = shade;
 painter.prepare = prepare;
 painter.process = process;
 painter.process_arg = process_arg;
 painter.ncomp = (shade->use_function > 0 ? 1 : fz_colorspace_n(ctx, shade->colorspace));

 if (shade->type == FZ_FUNCTION_BASED)
  fz_process_shade_type1(ctx, shade, ctm, &painter);
 else if (shade->type == FZ_LINEAR)
  fz_process_shade_type2(ctx, shade, ctm, &painter, scissor);
 else if (shade->type == FZ_RADIAL)
  fz_process_shade_type3(ctx, shade, ctm, &painter);
 else if (shade->type == FZ_MESH_TYPE4)
  fz_process_shade_type4(ctx, shade, ctm, &painter);
 else if (shade->type == FZ_MESH_TYPE5)
  fz_process_shade_type5(ctx, shade, ctm, &painter);
 else if (shade->type == FZ_MESH_TYPE6)
  fz_process_shade_type6(ctx, shade, ctm, &painter);
 else if (shade->type == FZ_MESH_TYPE7)
  fz_process_shade_type7(ctx, shade, ctm, &painter);
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "Unexpected mesh type %d\n", shade->type);
}
