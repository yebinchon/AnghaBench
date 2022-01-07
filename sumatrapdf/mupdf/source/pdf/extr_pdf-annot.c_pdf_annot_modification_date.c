
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int int64_t ;
typedef int fz_context ;


 int M ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_parse_date (int *,int ) ;
 int pdf_to_str_buf (int *,int *) ;

int64_t
pdf_annot_modification_date(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *date = pdf_dict_get(ctx, annot->obj, PDF_NAME(M));
 return date ? pdf_parse_date(ctx, pdf_to_str_buf(ctx, date)) : 0;
}
