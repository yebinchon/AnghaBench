
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* parent; } ;
typedef TYPE_1__ xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_matrix ;
typedef int fz_link ;
typedef int fz_context ;


 int fz_warn (int *,char*) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 int * fz_xml_find_down (int *,char*) ;
 int * fz_xml_next (int *) ;
 int xps_drop_resource_dictionary (int *,int *,TYPE_1__*) ;
 int xps_load_links_in_element (int *,int *,int ,char*,TYPE_1__*,int *,int **) ;
 TYPE_1__* xps_parse_resource_dictionary (int *,int *,char*,int *) ;
 int xps_parse_transform (int *,int *,char*,int *,int ) ;
 int xps_resolve_resource_reference (int *,int *,TYPE_1__*,char**,int **,int *) ;

__attribute__((used)) static void
xps_load_links_in_canvas(fz_context *ctx, xps_document *doc, fz_matrix ctm,
  char *base_uri, xps_resource *dict, fz_xml *root, fz_link **link)
{
 xps_resource *new_dict = ((void*)0);
 fz_xml *node;

 char *navigate_uri_att = fz_xml_att(root, "FixedPage.NavigateUri");
 char *transform_att = fz_xml_att(root, "RenderTransform");
 fz_xml *transform_tag = fz_xml_down(fz_xml_find_down(root, "Canvas.RenderTransform"));
 fz_xml *resource_tag = fz_xml_down(fz_xml_find_down(root, "Canvas.Resources"));

 if (resource_tag)
 {
  new_dict = xps_parse_resource_dictionary(ctx, doc, base_uri, resource_tag);
  if (new_dict)
  {
   new_dict->parent = dict;
   dict = new_dict;
  }
 }

 xps_resolve_resource_reference(ctx, doc, dict, &transform_att, &transform_tag, ((void*)0));

 ctm = xps_parse_transform(ctx, doc, transform_att, transform_tag, ctm);

 if (navigate_uri_att)
  fz_warn(ctx, "FixedPage.NavigateUri attribute on Canvas element");

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
  xps_load_links_in_element(ctx, doc, ctm, base_uri, dict, node, link);

 if (new_dict)
  xps_drop_resource_dictionary(ctx, doc, new_dict);
}
