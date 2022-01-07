
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_link ;
typedef int fz_context ;


 int fz_bound_path (int *,int *,int *,int ) ;
 int fz_drop_path (int *,int *) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int ) ;
 int fz_xml_find_down (int *,char*) ;
 int xps_add_link (int *,int *,int ,char*,char*,int **) ;
 int * xps_parse_abbreviated_geometry (int *,int *,char*,int*) ;
 int * xps_parse_path_geometry (int *,int *,int *,int *,int ,int*) ;
 int xps_parse_transform (int *,int *,char*,int *,int ) ;
 int xps_resolve_resource_reference (int *,int *,int *,char**,int **,int *) ;

__attribute__((used)) static void
xps_load_links_in_path(fz_context *ctx, xps_document *doc, fz_matrix ctm,
  char *base_uri, xps_resource *dict, fz_xml *root, fz_link **link)
{
 char *navigate_uri_att = fz_xml_att(root, "FixedPage.NavigateUri");
 if (navigate_uri_att)
 {
  char *transform_att = fz_xml_att(root, "RenderTransform");
  fz_xml *transform_tag = fz_xml_down(fz_xml_find_down(root, "Path.RenderTransform"));

  char *data_att = fz_xml_att(root, "Data");
  fz_xml *data_tag = fz_xml_down(fz_xml_find_down(root, "Path.Data"));

  fz_path *path = ((void*)0);
  int fill_rule;
  fz_rect area;

  xps_resolve_resource_reference(ctx, doc, dict, &data_att, &data_tag, ((void*)0));
  xps_resolve_resource_reference(ctx, doc, dict, &transform_att, &transform_tag, ((void*)0));

  ctm = xps_parse_transform(ctx, doc, transform_att, transform_tag, ctm);

  if (data_att)
   path = xps_parse_abbreviated_geometry(ctx, doc, data_att, &fill_rule);
  else if (data_tag)
   path = xps_parse_path_geometry(ctx, doc, dict, data_tag, 0, &fill_rule);
  if (path)
  {
   area = fz_bound_path(ctx, path, ((void*)0), ctm);
   fz_drop_path(ctx, path);
   xps_add_link(ctx, doc, area, base_uri, navigate_uri_att, link);
  }
 }
}
