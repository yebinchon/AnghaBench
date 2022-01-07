
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;


 int * pdf_open_image_stream (int *,int *,int,int *) ;

fz_stream *
pdf_open_stream_number(fz_context *ctx, pdf_document *doc, int num)
{
 return pdf_open_image_stream(ctx, doc, num, ((void*)0));
}
