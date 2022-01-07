
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_outline ;
typedef int fz_context ;


 int * fz_xml_down (int *) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * xps_parse_document_outline (int *,int *,int *) ;

__attribute__((used)) static fz_outline *
xps_parse_document_structure(fz_context *ctx, xps_document *doc, fz_xml *root)
{
 fz_xml *node;
 if (fz_xml_is_tag(root, "DocumentStructure"))
 {
  node = fz_xml_down(root);
  if (node && fz_xml_is_tag(node, "DocumentStructure.Outline"))
  {
   node = fz_xml_down(node);
   if (node && fz_xml_is_tag(node, "DocumentOutline"))
    return xps_parse_document_outline(ctx, doc, node);
  }
 }
 return ((void*)0);
}
