
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ fz_compression_params ;


 int DP ;
 int DecodeParms ;
 int F ;
 int FZ_IMAGE_RAW ;
 int Filter ;
 int PDF_NAME (int ) ;
 int * build_filter (int *,int *,int *,int *,int *,int ,int ,TYPE_1__*) ;
 int * build_filter_chain (int *,int *,int *,int *,int *,int ,int ,TYPE_1__*) ;
 int * fz_open_null_filter (int *,int *,int,int ) ;
 int fz_tell (int *,int *) ;
 scalar_t__ pdf_array_len (int *,int *) ;
 int * pdf_dict_geta (int *,int *,int ,int ) ;
 scalar_t__ pdf_is_name (int *,int *) ;

fz_stream *
pdf_open_inline_stream(fz_context *ctx, pdf_document *doc, pdf_obj *stmobj, int length, fz_stream *file_stm, fz_compression_params *imparams)
{
 pdf_obj *filters = pdf_dict_geta(ctx, stmobj, PDF_NAME(Filter), PDF_NAME(F));
 pdf_obj *params = pdf_dict_geta(ctx, stmobj, PDF_NAME(DecodeParms), PDF_NAME(DP));

 if (pdf_is_name(ctx, filters))
  return build_filter(ctx, file_stm, doc, filters, params, 0, 0, imparams);
 else if (pdf_array_len(ctx, filters) > 0)
  return build_filter_chain(ctx, file_stm, doc, filters, params, 0, 0, imparams);

 if (imparams)
  imparams->type = FZ_IMAGE_RAW;
 return fz_open_null_filter(ctx, file_stm, length, fz_tell(ctx, file_stm));
}
