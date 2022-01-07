
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_matrix ;
typedef int fz_link ;
typedef int fz_context ;


 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int xps_load_links_in_canvas (int *,int *,int ,char*,int *,int *,int **) ;
 int xps_load_links_in_glyphs (int *,int *,int ,char*,int *,int *,int **) ;
 int xps_load_links_in_path (int *,int *,int ,char*,int *,int *,int **) ;
 int * xps_lookup_alternate_content (int *,int *,int *) ;

__attribute__((used)) static void
xps_load_links_in_element(fz_context *ctx, xps_document *doc, fz_matrix ctm, char *base_uri, xps_resource *dict, fz_xml *node, fz_link **link)
{
 if (fz_xml_is_tag(node, "Path"))
  xps_load_links_in_path(ctx, doc, ctm, base_uri, dict, node, link);
 else if (fz_xml_is_tag(node, "Glyphs"))
  xps_load_links_in_glyphs(ctx, doc, ctm, base_uri, dict, node, link);
 else if (fz_xml_is_tag(node, "Canvas"))
  xps_load_links_in_canvas(ctx, doc, ctm, base_uri, dict, node, link);
 else if (fz_xml_is_tag(node, "AlternateContent"))
 {
  node = xps_lookup_alternate_content(ctx, doc, node);
  if (node)
   xps_load_links_in_element(ctx, doc, ctm, base_uri, dict, node, link);
 }
}
