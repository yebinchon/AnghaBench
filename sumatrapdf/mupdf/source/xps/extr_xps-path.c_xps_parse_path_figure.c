
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_path ;
typedef int fz_context ;


 int fz_closepath (int *,int *) ;
 int fz_lineto (int *,int *,float,float) ;
 int fz_moveto (int *,int *,float,float) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * fz_xml_next (int *) ;
 int strcmp (char*,char*) ;
 int xps_parse_arc_segment (int *,int *,int *,int *,int,int*) ;
 int xps_parse_point (int *,int *,char*,float*,float*) ;
 int xps_parse_poly_bezier_segment (int *,int *,int *,int *,int,int*) ;
 int xps_parse_poly_line_segment (int *,int *,int *,int *,int,int*) ;
 int xps_parse_poly_quadratic_bezier_segment (int *,int *,int *,int *,int,int*) ;

__attribute__((used)) static void
xps_parse_path_figure(fz_context *ctx, xps_document *doc, fz_path *path, fz_xml *root, int stroking)
{
 fz_xml *node;

 char *is_closed_att;
 char *start_point_att;
 char *is_filled_att;

 int is_closed = 0;
 int is_filled = 1;
 float start_x = 0;
 float start_y = 0;

 int skipped_stroke = 0;

 is_closed_att = fz_xml_att(root, "IsClosed");
 start_point_att = fz_xml_att(root, "StartPoint");
 is_filled_att = fz_xml_att(root, "IsFilled");

 if (is_closed_att)
  is_closed = !strcmp(is_closed_att, "true");
 if (is_filled_att)
  is_filled = !strcmp(is_filled_att, "true");
 if (start_point_att)
  xps_parse_point(ctx, doc, start_point_att, &start_x, &start_y);

 if (!stroking && !is_filled)
  return;

 fz_moveto(ctx, path, start_x, start_y);

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
 {
  if (fz_xml_is_tag(node, "ArcSegment"))
   xps_parse_arc_segment(ctx, doc, path, node, stroking, &skipped_stroke);
  if (fz_xml_is_tag(node, "PolyBezierSegment"))
   xps_parse_poly_bezier_segment(ctx, doc, path, node, stroking, &skipped_stroke);
  if (fz_xml_is_tag(node, "PolyLineSegment"))
   xps_parse_poly_line_segment(ctx, doc, path, node, stroking, &skipped_stroke);
  if (fz_xml_is_tag(node, "PolyQuadraticBezierSegment"))
   xps_parse_poly_quadratic_bezier_segment(ctx, doc, path, node, stroking, &skipped_stroke);
 }

 if (is_closed)
 {
  if (stroking && skipped_stroke)
   fz_lineto(ctx, path, start_x, start_y);
  else
   fz_closepath(ctx, path);
 }
}
