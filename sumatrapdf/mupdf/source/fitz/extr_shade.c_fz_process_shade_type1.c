
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_vertex ;
struct TYPE_5__ {float* fn_vals; int xdivs; int ydivs; float** domain; int matrix; } ;
struct TYPE_6__ {TYPE_1__ f; } ;
struct TYPE_7__ {TYPE_2__ u; int colorspace; } ;
typedef TYPE_3__ fz_shade ;
typedef int fz_mesh_processor ;
typedef int fz_matrix ;
typedef int fz_context ;


 int SWAP (int *,int *) ;
 int fz_colorspace_n (int *,int ) ;
 int fz_concat (int ,int ) ;
 int fz_prepare_vertex (int *,int *,int *,int ,float,float,float*) ;
 int paint_quad (int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
fz_process_shade_type1(fz_context *ctx, fz_shade *shade, fz_matrix ctm, fz_mesh_processor *painter)
{
 float *p = shade->u.f.fn_vals;
 int xdivs = shade->u.f.xdivs;
 int ydivs = shade->u.f.ydivs;
 float x0 = shade->u.f.domain[0][0];
 float y0 = shade->u.f.domain[0][1];
 float x1 = shade->u.f.domain[1][0];
 float y1 = shade->u.f.domain[1][1];
 int xx, yy;
 float y, yn, x;
 fz_vertex vs[2][2];
 fz_vertex *v = vs[0];
 fz_vertex *vn = vs[1];
 int n = fz_colorspace_n(ctx, shade->colorspace);

 ctm = fz_concat(shade->u.f.matrix, ctm);

 y = y0;
 for (yy = 0; yy < ydivs; yy++)
 {
  yn = y0 + (y1 - y0) * (yy + 1) / ydivs;

  x = x0;

  fz_prepare_vertex(ctx, painter, &v[0], ctm, x, y, p);
  p += n;
  fz_prepare_vertex(ctx, painter, &v[1], ctm, x, yn, p + xdivs * n);

  for (xx = 0; xx < xdivs; xx++)
  {
   x = x0 + (x1 - x0) * (xx + 1) / xdivs;

   fz_prepare_vertex(ctx, painter, &vn[0], ctm, x, y, p);
   p += n;
   fz_prepare_vertex(ctx, painter, &vn[1], ctm, x, yn, p + xdivs * n);

   paint_quad(ctx, painter, &v[0], &vn[0], &vn[1], &v[1]);
   SWAP(v,vn);
  }
  y = yn;
 }
}
