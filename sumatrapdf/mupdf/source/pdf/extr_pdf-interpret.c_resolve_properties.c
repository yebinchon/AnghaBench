
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int * rdb; } ;
typedef TYPE_1__ pdf_csi ;
typedef int fz_context ;


 int * PDF_NAME (int ) ;
 int Properties ;
 int * pdf_dict_get (int *,int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;

__attribute__((used)) static pdf_obj *
resolve_properties(fz_context *ctx, pdf_csi *csi, pdf_obj *obj)
{
 if (pdf_is_name(ctx, obj))
  return pdf_dict_get(ctx, pdf_dict_get(ctx, csi->rdb, PDF_NAME(Properties)), obj);
 else
  return obj;
}
