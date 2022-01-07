
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_vertex ;
struct TYPE_3__ {int process_arg; int (* process ) (int *,int ,int *,int *,int *) ;} ;
typedef TYPE_1__ fz_mesh_processor ;
typedef int fz_context ;


 int stub1 (int *,int ,int *,int *,int *) ;

__attribute__((used)) static inline void
paint_tri(fz_context *ctx, fz_mesh_processor *painter, fz_vertex *v0, fz_vertex *v1, fz_vertex *v2)
{
 if (painter->process)
 {
  painter->process(ctx, painter->process_arg, v0, v1, v2);
 }
}
