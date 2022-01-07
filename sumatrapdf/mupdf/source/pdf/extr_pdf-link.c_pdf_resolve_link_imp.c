
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_location ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_make_location (int ,int ) ;
 int pdf_resolve_link (int *,int *,char const*,float*,float*) ;

fz_location
pdf_resolve_link_imp(fz_context *ctx, fz_document *doc_, const char *uri, float *xp, float *yp)
{
 pdf_document *doc = (pdf_document*)doc_;
 return fz_make_location(0, pdf_resolve_link(ctx, doc, uri, xp, yp));
}
