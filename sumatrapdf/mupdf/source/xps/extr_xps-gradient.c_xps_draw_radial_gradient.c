
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xps_document ;
struct stop {int dummy; } ;
typedef int fz_xml ;
struct TYPE_5__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 scalar_t__ FLT_EPSILON ;
 int SPREAD_REFLECT ;
 int SPREAD_REPEAT ;
 int ceilf (float) ;
 scalar_t__ fz_abs (float) ;
 float fz_atof (char*) ;
 int fz_invert_matrix (int ) ;
 float fz_max (float,float) ;
 int fz_maxi (int,int ) ;
 int fz_pre_scale (int ,int,float) ;
 TYPE_1__ fz_transform_rect (TYPE_1__,int ) ;
 char* fz_xml_att (int *,char*) ;
 float hypotf (float,float) ;
 int xps_draw_one_radial_gradient (int *,int *,int ,struct stop*,int,int,float,float,float,float,float,float) ;
 int xps_parse_point (int *,int *,char*,float*,float*) ;

__attribute__((used)) static void
xps_draw_radial_gradient(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
 struct stop *stops, int count,
 fz_xml *root, int spread)
{
 float x0, y0, r0;
 float x1, y1, r1;
 float xrad = 1;
 float yrad = 1;
 float invscale;
 int i, ma = 1;
 fz_matrix inv;

 char *center_att = fz_xml_att(root, "Center");
 char *origin_att = fz_xml_att(root, "GradientOrigin");
 char *radius_x_att = fz_xml_att(root, "RadiusX");
 char *radius_y_att = fz_xml_att(root, "RadiusY");

 x0 = y0 = 0.0f;
 x1 = y1 = 1.0f;
 xrad = 1.0f;
 yrad = 1.0f;

 if (origin_att)
  xps_parse_point(ctx, doc, origin_att, &x0, &y0);
 if (center_att)
  xps_parse_point(ctx, doc, center_att, &x1, &y1);
 if (radius_x_att)
  xrad = fz_atof(radius_x_att);
 if (radius_y_att)
  yrad = fz_atof(radius_y_att);

 xrad = fz_max(0.01f, xrad);
 yrad = fz_max(0.01f, yrad);


 if (fz_abs(xrad) > FLT_EPSILON)
 {
  ctm = fz_pre_scale(ctm, 1, yrad/xrad);
 }

 if (yrad != 0.0f)
 {
  invscale = xrad / yrad;
  y0 = y0 * invscale;
  y1 = y1 * invscale;
 }

 r0 = 0;
 r1 = xrad;

 inv = fz_invert_matrix(ctm);
 area = fz_transform_rect(area, inv);
 ma = fz_maxi(ma, ceilf(hypotf(area.x0 - x0, area.y0 - y0) / xrad));
 ma = fz_maxi(ma, ceilf(hypotf(area.x1 - x0, area.y0 - y0) / xrad));
 ma = fz_maxi(ma, ceilf(hypotf(area.x0 - x0, area.y1 - y0) / xrad));
 ma = fz_maxi(ma, ceilf(hypotf(area.x1 - x0, area.y1 - y0) / xrad));

 if (spread == SPREAD_REPEAT)
 {
  for (i = ma - 1; i >= 0; i--)
   xps_draw_one_radial_gradient(ctx, doc, ctm, stops, count, 0, x0, y0, r0 + i * xrad, x1, y1, r1 + i * xrad);
 }
 else if (spread == SPREAD_REFLECT)
 {
  if ((ma % 2) != 0)
   ma++;
  for (i = ma - 2; i >= 0; i -= 2)
  {
   xps_draw_one_radial_gradient(ctx, doc, ctm, stops, count, 0, x0, y0, r0 + i * xrad, x1, y1, r1 + i * xrad);
   xps_draw_one_radial_gradient(ctx, doc, ctm, stops, count, 0, x0, y0, r0 + (i + 2) * xrad, x1, y1, r1 + i * xrad);
  }
 }
 else
 {
  xps_draw_one_radial_gradient(ctx, doc, ctm, stops, count, 1, x0, y0, r0, x1, y1, r1);
 }
}
