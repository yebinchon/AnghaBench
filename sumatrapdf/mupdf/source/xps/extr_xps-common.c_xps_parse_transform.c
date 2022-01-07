
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_matrix ;
typedef int fz_context ;


 int fz_concat (int ,int ) ;
 int xps_parse_matrix_transform (int *,int *,int *) ;
 int xps_parse_render_transform (int *,int *,char*) ;

fz_matrix
xps_parse_transform(fz_context *ctx, xps_document *doc, char *att, fz_xml *tag, fz_matrix ctm)
{
 if (att)
  return fz_concat(xps_parse_render_transform(ctx, doc, att), ctm);
 if (tag)
  return fz_concat(xps_parse_matrix_transform(ctx, doc, tag), ctm);
 return ctm;
}
