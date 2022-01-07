
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * color; int ** pole; } ;
typedef TYPE_1__ tensor_patch ;
struct TYPE_10__ {int p; } ;
typedef TYPE_2__ fz_vertex ;
typedef int fz_mesh_processor ;
typedef int fz_context ;


 int fz_prepare_color (int *,int *,TYPE_2__*,int ) ;
 int paint_quad (int *,int *,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
triangulate_patch(fz_context *ctx, fz_mesh_processor *painter, tensor_patch *p)
{
 fz_vertex v0, v1, v2, v3;

 v0.p = p->pole[0][0];
 v1.p = p->pole[0][3];
 v2.p = p->pole[3][3];
 v3.p = p->pole[3][0];

 fz_prepare_color(ctx, painter, &v0, p->color[0]);
 fz_prepare_color(ctx, painter, &v1, p->color[1]);
 fz_prepare_color(ctx, painter, &v2, p->color[2]);
 fz_prepare_color(ctx, painter, &v3, p->color[3]);

 paint_quad(ctx, painter, &v0, &v1, &v2, &v3);
}
