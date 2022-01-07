
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


 int xps_parse_element (int *,int *,int ,int ,char*,int *,int *) ;

__attribute__((used)) static void
xps_paint_visual_brush(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
 char *base_uri, xps_resource *dict, fz_xml *root, void *visual_tag)
{
 xps_parse_element(ctx, doc, ctm, area, base_uri, dict, (fz_xml *)visual_tag);
}
