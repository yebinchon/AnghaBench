
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int cbz_document_handler ;
 int epub_document_handler ;
 int fz_register_document_handler (int *,int *) ;
 int html_document_handler ;
 int img_document_handler ;
 int pdf_document_handler ;
 int svg_document_handler ;
 int xps_document_handler ;

void fz_register_document_handlers(fz_context *ctx)
{
}
