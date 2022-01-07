
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xps_resource ;
struct TYPE_5__ {TYPE_1__* fix; int xml; } ;
typedef TYPE_2__ xps_page ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_matrix ;
typedef int fz_link ;
typedef int fz_context ;
struct TYPE_4__ {int name; } ;


 int fz_strlcpy (char*,int ,int) ;
 int * fz_xml_down (int *) ;
 int * fz_xml_find_down (int *,char*) ;
 int * fz_xml_next (int *) ;
 int * fz_xml_root (int ) ;
 char* strrchr (char*,char) ;
 int xps_drop_resource_dictionary (int *,int *,int *) ;
 int xps_load_links_in_element (int *,int *,int ,char*,int *,int *,int **) ;
 int * xps_parse_resource_dictionary (int *,int *,char*,int *) ;

__attribute__((used)) static void
xps_load_links_in_fixed_page(fz_context *ctx, xps_document *doc, fz_matrix ctm, xps_page *page, fz_link **link)
{
 fz_xml *root, *node, *resource_tag;
 xps_resource *dict = ((void*)0);
 char base_uri[1024];
 char *s;

 root = fz_xml_root(page->xml);

 if (!root)
  return;

 fz_strlcpy(base_uri, page->fix->name, sizeof base_uri);
 s = strrchr(base_uri, '/');
 if (s)
  s[1] = 0;

 resource_tag = fz_xml_down(fz_xml_find_down(root, "FixedPage.Resources"));
 if (resource_tag)
  dict = xps_parse_resource_dictionary(ctx, doc, base_uri, resource_tag);

 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
  xps_load_links_in_element(ctx, doc, ctm, base_uri, dict, node, link);

 if (dict)
  xps_drop_resource_dictionary(ctx, doc, dict);
}
