
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_context ;
typedef int fz_buffer ;


 int * pdf_load_image_stream (int *,int *,int,int *,int *) ;

fz_buffer *
pdf_load_stream_number(fz_context *ctx, pdf_document *doc, int num)
{
 return pdf_load_image_stream(ctx, doc, num, ((void*)0), ((void*)0));
}
