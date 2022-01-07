
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;
typedef int fz_buffer ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int pdf_get_indirect_document (int *,int *) ;
 scalar_t__ pdf_is_stream (int *,int *) ;
 int * pdf_load_raw_stream_number (int *,int ,int ) ;
 int pdf_to_num (int *,int *) ;

fz_buffer *pdf_load_raw_stream(fz_context *ctx, pdf_obj *ref)
{
 if (pdf_is_stream(ctx, ref))
  return pdf_load_raw_stream_number(ctx, pdf_get_indirect_document(ctx, ref), pdf_to_num(ctx, ref));
 fz_throw(ctx, FZ_ERROR_GENERIC, "object is not a stream");
}
