
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int BG ;
 int MK ;
 int PDF_NAME (int ) ;
 int pdf_dict_putl (int *,int *,int *,int ,int ,int *) ;
 int pdf_field_mark_dirty (int *,int *) ;

void pdf_field_set_fill_color(fz_context *ctx, pdf_obj *field, pdf_obj *col)
{



 pdf_dict_putl(ctx, field, col, PDF_NAME(MK), PDF_NAME(BG), ((void*)0));
 pdf_field_mark_dirty(ctx, field);
}
