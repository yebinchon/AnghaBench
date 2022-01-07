
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ stm_ofs; int obj; int * stm_buf; } ;
typedef TYPE_1__ pdf_xref_entry ;
struct TYPE_9__ {int file; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;
typedef int fz_compression_params ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*,...) ;
 TYPE_1__* pdf_cache_object (int *,TYPE_2__*,int) ;
 int * pdf_open_filter (int *,TYPE_2__*,int ,int ,int,scalar_t__,int *) ;
 int pdf_xref_len (int *,TYPE_2__*) ;

__attribute__((used)) static fz_stream *
pdf_open_image_stream(fz_context *ctx, pdf_document *doc, int num, fz_compression_params *params)
{
 pdf_xref_entry *x;

 if (num <= 0 || num >= pdf_xref_len(ctx, doc))
  fz_throw(ctx, FZ_ERROR_GENERIC, "object id out of range (%d 0 R)", num);

 x = pdf_cache_object(ctx, doc, num);
 if (x->stm_ofs == 0 && x->stm_buf == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "object is not a stream");

 return pdf_open_filter(ctx, doc, doc->file, x->obj, num, x->stm_ofs, params);
}
