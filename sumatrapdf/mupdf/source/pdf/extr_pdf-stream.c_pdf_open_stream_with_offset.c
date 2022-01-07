
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int file; } ;
typedef TYPE_1__ pdf_document ;
typedef scalar_t__ int64_t ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int * pdf_open_filter (int *,TYPE_1__*,int ,int *,int,scalar_t__,int *) ;

fz_stream *
pdf_open_stream_with_offset(fz_context *ctx, pdf_document *doc, int num, pdf_obj *dict, int64_t stm_ofs)
{
 if (stm_ofs == 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "object is not a stream");
 return pdf_open_filter(ctx, doc, doc->file, dict, num, stm_ofs, ((void*)0));
}
