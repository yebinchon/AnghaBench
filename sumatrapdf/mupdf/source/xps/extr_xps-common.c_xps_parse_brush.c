
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xps_resource ;
struct TYPE_9__ {TYPE_1__* cookie; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_xml ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_8__ {scalar_t__ abort; } ;


 int fz_warn (int *,char*) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int xps_parse_image_brush (int *,TYPE_2__*,int ,int ,char*,int *,int *) ;
 int xps_parse_linear_gradient_brush (int *,TYPE_2__*,int ,int ,char*,int *,int *) ;
 int xps_parse_radial_gradient_brush (int *,TYPE_2__*,int ,int ,char*,int *,int *) ;
 int xps_parse_visual_brush (int *,TYPE_2__*,int ,int ,char*,int *,int *) ;

void
xps_parse_brush(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area, char *base_uri, xps_resource *dict, fz_xml *node)
{
 if (doc->cookie && doc->cookie->abort)
  return;

 if (fz_xml_is_tag(node, "ImageBrush"))
  xps_parse_image_brush(ctx, doc, ctm, area, base_uri, dict, node);
 else if (fz_xml_is_tag(node, "VisualBrush"))
  xps_parse_visual_brush(ctx, doc, ctm, area, base_uri, dict, node);
 else if (fz_xml_is_tag(node, "LinearGradientBrush"))
  xps_parse_linear_gradient_brush(ctx, doc, ctm, area, base_uri, dict, node);
 else if (fz_xml_is_tag(node, "RadialGradientBrush"))
  xps_parse_radial_gradient_brush(ctx, doc, ctm, area, base_uri, dict, node);
 else
  fz_warn(ctx, "unknown brush tag");
}
