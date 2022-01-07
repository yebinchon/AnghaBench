
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


 int xps_draw_radial_gradient ;
 int xps_parse_gradient_brush (int *,int *,int ,int ,char*,int *,int *,int ) ;

void
xps_parse_radial_gradient_brush(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
 char *base_uri, xps_resource *dict, fz_xml *root)
{
 xps_parse_gradient_brush(ctx, doc, ctm, area, base_uri, dict, root, xps_draw_radial_gradient);
}
