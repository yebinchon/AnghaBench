
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_matrix ;
typedef int fz_document ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * fz_new_pixmap_from_page_number_with_separations (int *,int *,int,int ,int *,int *,int) ;

fz_pixmap *
fz_new_pixmap_from_page_number(fz_context *ctx, fz_document *doc, int number, fz_matrix ctm, fz_colorspace *cs, int alpha)
{
 return fz_new_pixmap_from_page_number_with_separations(ctx, doc, number, ctm, cs, ((void*)0), alpha);
}
