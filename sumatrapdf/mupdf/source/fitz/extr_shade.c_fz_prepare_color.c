
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_vertex ;
struct TYPE_3__ {int process_arg; int (* prepare ) (int *,int ,int *,float*) ;} ;
typedef TYPE_1__ fz_mesh_processor ;
typedef int fz_context ;


 int stub1 (int *,int ,int *,float*) ;

__attribute__((used)) static inline void
fz_prepare_color(fz_context *ctx, fz_mesh_processor *painter, fz_vertex *v, float *c)
{
 if (painter->prepare)
 {
  painter->prepare(ctx, painter->process_arg, v, c);
 }
}
