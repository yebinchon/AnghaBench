
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * fz_xml_next (int *) ;
 int xps_paint_visual_brush ;
 int xps_parse_tiling_brush (int *,int *,int ,int ,char*,int *,int *,int ,int *) ;
 int xps_resolve_resource_reference (int *,int *,int *,char**,int **,char**) ;

void
xps_parse_visual_brush(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
 char *base_uri, xps_resource *dict, fz_xml *root)
{
 fz_xml *node;

 char *visual_uri;
 char *visual_att;
 fz_xml *visual_tag = ((void*)0);

 visual_att = fz_xml_att(root, "Visual");

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
 {
  if (fz_xml_is_tag(node, "VisualBrush.Visual"))
   visual_tag = fz_xml_down(node);
 }

 visual_uri = base_uri;
 xps_resolve_resource_reference(ctx, doc, dict, &visual_att, &visual_tag, &visual_uri);

 if (visual_tag)
 {
  xps_parse_tiling_brush(ctx, doc, ctm, area,
   visual_uri, dict, root, xps_paint_visual_brush, visual_tag);
 }
}
