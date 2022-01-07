
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_matrix ;
typedef int fz_context ;


 int fz_identity ;
 char* fz_xml_att (int *,char*) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int xps_parse_render_transform (int *,int *,char*) ;

__attribute__((used)) static fz_matrix
xps_parse_matrix_transform(fz_context *ctx, xps_document *doc, fz_xml *root)
{
 if (fz_xml_is_tag(root, "MatrixTransform"))
 {
  char *transform = fz_xml_att(root, "Matrix");
  if (transform)
   return xps_parse_render_transform(ctx, doc, transform);
 }
 return fz_identity;
}
