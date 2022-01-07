
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_image ;
typedef int fz_context ;


 int * pdf_load_image_imp (int *,int *,int *,int *,int *,int ) ;

fz_image *
pdf_load_inline_image(fz_context *ctx, pdf_document *doc, pdf_obj *rdb, pdf_obj *dict, fz_stream *file)
{
 return pdf_load_image_imp(ctx, doc, rdb, dict, file, 0);
}
