
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stm_buf; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;
typedef int fz_buffer ;


 int DecodeParms ;
 int Filter ;
 int Length ;
 int PDF_NAME (int ) ;
 scalar_t__ fz_buffer_storage (int *,int *,int *) ;
 int fz_drop_buffer (int *,int ) ;
 int fz_keep_buffer (int *,int *) ;
 int fz_warn (int *,char*,int,int) ;
 int pdf_dict_del (int *,int *,int ) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 TYPE_1__* pdf_get_xref_entry (int *,int *,int) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 int pdf_obj_parent_num (int *,int *) ;
 int pdf_to_num (int *,int *) ;
 int pdf_xref_len (int *,int *) ;

void
pdf_update_stream(fz_context *ctx, pdf_document *doc, pdf_obj *obj, fz_buffer *newbuf, int compressed)
{
 int num;
 pdf_xref_entry *x;

 if (pdf_is_indirect(ctx, obj))
  num = pdf_to_num(ctx, obj);
 else
  num = pdf_obj_parent_num(ctx, obj);
 if (num <= 0 || num >= pdf_xref_len(ctx, doc))
 {
  fz_warn(ctx, "object out of range (%d 0 R); xref size %d", num, pdf_xref_len(ctx, doc));
  return;
 }

 x = pdf_get_xref_entry(ctx, doc, num);

 fz_drop_buffer(ctx, x->stm_buf);
 x->stm_buf = fz_keep_buffer(ctx, newbuf);

 pdf_dict_put_int(ctx, obj, PDF_NAME(Length), (int)fz_buffer_storage(ctx, newbuf, ((void*)0)));
 if (!compressed)
 {
  pdf_dict_del(ctx, obj, PDF_NAME(Filter));
  pdf_dict_del(ctx, obj, PDF_NAME(DecodeParms));
 }
}
