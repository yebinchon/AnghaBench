
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * fz_new_pixmap_from_page_contents_with_separations (int *,int *,int ,int *,int *,int) ;

fz_pixmap *
fz_new_pixmap_from_page_contents(fz_context *ctx, fz_page *page, fz_matrix ctm, fz_colorspace *cs, int alpha)
{
 return fz_new_pixmap_from_page_contents_with_separations(ctx, page, ctm, cs, ((void*)0), alpha);
}
