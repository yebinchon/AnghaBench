
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;


 int * fz_open_memory (int *,unsigned char*,int ) ;
 int fz_warn (int *,char*,int) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_stream (int *,int *) ;
 int * pdf_open_image_stream (int *,int *,int,int *) ;
 int * pdf_open_object_array (int *,int *,int *) ;
 int pdf_to_num (int *,int *) ;

fz_stream *
pdf_open_contents_stream(fz_context *ctx, pdf_document *doc, pdf_obj *obj)
{
 int num;

 if (pdf_is_array(ctx, obj))
  return pdf_open_object_array(ctx, doc, obj);

 num = pdf_to_num(ctx, obj);
 if (pdf_is_stream(ctx, obj))
  return pdf_open_image_stream(ctx, doc, num, ((void*)0));

 fz_warn(ctx, "content stream is not a stream (%d 0 R)", num);
 return fz_open_memory(ctx, (unsigned char *)"", 0);
}
