
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * pdf_add_object_drop (int *,int *,int ) ;
 int pdf_new_array (int *,int *,int) ;

pdf_obj *
pdf_add_new_array(fz_context *ctx, pdf_document *doc, int initial)
{
 return pdf_add_object_drop(ctx, doc, pdf_new_array(ctx, doc, initial));
}
