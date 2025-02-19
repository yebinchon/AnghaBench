
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct paint_tri_data {int bbox; TYPE_1__* dest; } ;
typedef int fz_vertex ;
struct TYPE_3__ {scalar_t__ alpha; scalar_t__ n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int fz_paint_triangle (TYPE_1__*,float**,scalar_t__,int ) ;

__attribute__((used)) static void
do_paint_tri(fz_context *ctx, void *arg, fz_vertex *av, fz_vertex *bv, fz_vertex *cv)
{
 struct paint_tri_data *ptd = (struct paint_tri_data *)arg;
 float *vertices[3];
 fz_pixmap *dest;

 vertices[0] = (float *)av;
 vertices[1] = (float *)bv;
 vertices[2] = (float *)cv;

 dest = ptd->dest;
 fz_paint_triangle(dest, vertices, 2 + dest->n - dest->alpha, ptd->bbox);
}
