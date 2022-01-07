
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p; } ;
typedef TYPE_1__ fz_vertex ;
struct TYPE_7__ {int process_arg; int (* prepare ) (int *,int ,TYPE_1__*,float*) ;} ;
typedef TYPE_2__ fz_mesh_processor ;
typedef int fz_matrix ;
typedef int fz_context ;


 int fz_transform_point_xy (float,float,int ) ;
 int stub1 (int *,int ,TYPE_1__*,float*) ;

__attribute__((used)) static inline void
fz_prepare_vertex(fz_context *ctx, fz_mesh_processor *painter, fz_vertex *v, fz_matrix ctm, float x, float y, float *c)
{
 v->p = fz_transform_point_xy(x, y, ctm);
 if (painter->prepare)
 {
  painter->prepare(ctx, painter->process_arg, v, c);
 }
}
