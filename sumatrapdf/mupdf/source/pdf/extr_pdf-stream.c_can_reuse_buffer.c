
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int obj; int stm_buf; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ fz_compression_params ;


 int DP ;
 int DecodeParms ;
 int F ;
 scalar_t__ FZ_IMAGE_RAW ;
 int Filter ;
 int PDF_NAME (int ) ;
 int build_compression_params (int *,int *,int *,TYPE_2__*) ;
 int * pdf_array_get (int *,int *,int ) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_geta (int *,int ,int ,int ) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 int pdf_is_name (int *,int *) ;
 scalar_t__ pdf_is_null (int *,int *) ;

__attribute__((used)) static int
can_reuse_buffer(fz_context *ctx, pdf_xref_entry *entry, fz_compression_params *params)
{
 pdf_obj *f;
 pdf_obj *p;

 if (!entry || !entry->obj || !entry->stm_buf)
  return 0;

 if (params)
  params->type = FZ_IMAGE_RAW;

 f = pdf_dict_geta(ctx, entry->obj, PDF_NAME(Filter), PDF_NAME(F));

 if (!f)
  return 1;

 p = pdf_dict_geta(ctx, entry->obj, PDF_NAME(DecodeParms), PDF_NAME(DP));
 if (pdf_is_array(ctx, f))
 {
  int len = pdf_array_len(ctx, f);


  if (len == 0)
   return 1;

  if (len != 1)
   return 0;
  p = pdf_array_get(ctx, p, 0);
 }
 if (pdf_is_null(ctx, f))
  return 1;
 if (!pdf_is_name(ctx, f))
  return 0;



 if (!params)
  return 0;

 build_compression_params(ctx, f, p, params);

 return (params->type == FZ_IMAGE_RAW) ? 0 : 1;
}
