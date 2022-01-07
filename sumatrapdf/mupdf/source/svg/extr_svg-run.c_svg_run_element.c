
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svg_state ;
typedef int svg_document ;
typedef int fz_xml ;
typedef int fz_device ;
typedef int fz_context ;


 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int svg_run_circle (int *,int *,int *,int *,int const*) ;
 int svg_run_ellipse (int *,int *,int *,int *,int const*) ;
 int svg_run_g (int *,int *,int *,int *,int const*) ;
 int svg_run_image (int *,int *,int *,int *,int const*) ;
 int svg_run_line (int *,int *,int *,int *,int const*) ;
 int svg_run_path (int *,int *,int *,int *,int const*) ;
 int svg_run_polygon (int *,int *,int *,int *,int const*) ;
 int svg_run_polyline (int *,int *,int *,int *,int const*) ;
 int svg_run_rect (int *,int *,int *,int *,int const*) ;
 int svg_run_svg (int *,int *,int *,int *,int const*) ;
 int svg_run_text (int *,int *,int *,int *) ;
 int svg_run_text_path (int *,int *,int *,int *) ;
 int svg_run_text_ref (int *,int *,int *,int *) ;
 int svg_run_text_span (int *,int *,int *,int *) ;
 int svg_run_use (int *,int *,int *,int *,int const*) ;

__attribute__((used)) static void
svg_run_element(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *state)
{
 if (fz_xml_is_tag(root, "svg"))
  svg_run_svg(ctx, dev, doc, root, state);

 else if (fz_xml_is_tag(root, "g"))
  svg_run_g(ctx, dev, doc, root, state);

 else if (fz_xml_is_tag(root, "title"))
  ;
 else if (fz_xml_is_tag(root, "desc"))
  ;

 else if (fz_xml_is_tag(root, "defs"))
  ;
 else if (fz_xml_is_tag(root, "symbol"))
  ;

 else if (fz_xml_is_tag(root, "use"))
  svg_run_use(ctx, dev, doc, root, state);

 else if (fz_xml_is_tag(root, "path"))
  svg_run_path(ctx, dev, doc, root, state);
 else if (fz_xml_is_tag(root, "rect"))
  svg_run_rect(ctx, dev, doc, root, state);
 else if (fz_xml_is_tag(root, "circle"))
  svg_run_circle(ctx, dev, doc, root, state);
 else if (fz_xml_is_tag(root, "ellipse"))
  svg_run_ellipse(ctx, dev, doc, root, state);
 else if (fz_xml_is_tag(root, "line"))
  svg_run_line(ctx, dev, doc, root, state);
 else if (fz_xml_is_tag(root, "polyline"))
  svg_run_polyline(ctx, dev, doc, root, state);
 else if (fz_xml_is_tag(root, "polygon"))
  svg_run_polygon(ctx, dev, doc, root, state);

 else if (fz_xml_is_tag(root, "image"))
  svg_run_image(ctx, dev, doc, root, state);
 else
 {

 }
}
