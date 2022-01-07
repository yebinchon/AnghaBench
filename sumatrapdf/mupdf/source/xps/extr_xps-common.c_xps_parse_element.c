
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


 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * xps_lookup_alternate_content (int *,TYPE_2__*,int *) ;
 int xps_parse_canvas (int *,TYPE_2__*,int ,int ,char*,int *,int *) ;
 int xps_parse_glyphs (int *,TYPE_2__*,int ,char*,int *,int *) ;
 int xps_parse_path (int *,TYPE_2__*,int ,char*,int *,int *) ;

void
xps_parse_element(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area, char *base_uri, xps_resource *dict, fz_xml *node)
{
 if (doc->cookie && doc->cookie->abort)
  return;
 if (fz_xml_is_tag(node, "Path"))
  xps_parse_path(ctx, doc, ctm, base_uri, dict, node);
 if (fz_xml_is_tag(node, "Glyphs"))
  xps_parse_glyphs(ctx, doc, ctm, base_uri, dict, node);
 if (fz_xml_is_tag(node, "Canvas"))
  xps_parse_canvas(ctx, doc, ctm, area, base_uri, dict, node);
 if (fz_xml_is_tag(node, "AlternateContent"))
 {
  node = xps_lookup_alternate_content(ctx, doc, node);
  if (node)
   xps_parse_element(ctx, doc, ctm, area, base_uri, dict, node);
 }

}
