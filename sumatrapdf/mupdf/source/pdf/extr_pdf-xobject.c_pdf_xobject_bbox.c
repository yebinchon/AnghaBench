
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_rect ;
typedef int fz_context ;


 int BBox ;
 int PDF_NAME (int ) ;
 int pdf_dict_get_rect (int *,int *,int ) ;

fz_rect
pdf_xobject_bbox(fz_context *ctx, pdf_obj *xobj)
{
 return pdf_dict_get_rect(ctx, xobj, PDF_NAME(BBox));
}
