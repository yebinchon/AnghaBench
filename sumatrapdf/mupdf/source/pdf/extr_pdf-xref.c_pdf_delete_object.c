
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float type; int gen; int * obj; int * stm_buf; scalar_t__ stm_ofs; scalar_t__ num; scalar_t__ ofs; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef int pdf_document ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int *) ;
 int fz_warn (int *,char*,int,int) ;
 int pdf_drop_obj (int *,int *) ;
 TYPE_1__* pdf_get_incremental_xref_entry (int *,int *,int) ;
 int pdf_xref_len (int *,int *) ;

void
pdf_delete_object(fz_context *ctx, pdf_document *doc, int num)
{
 pdf_xref_entry *x;

 if (num <= 0 || num >= pdf_xref_len(ctx, doc))
 {
  fz_warn(ctx, "object out of range (%d 0 R); xref size %d", num, pdf_xref_len(ctx, doc));
  return;
 }

 x = pdf_get_incremental_xref_entry(ctx, doc, num);

 fz_drop_buffer(ctx, x->stm_buf);
 pdf_drop_obj(ctx, x->obj);

 x->type = 'f';
 x->ofs = 0;
 x->gen += 1;
 x->num = 0;
 x->stm_ofs = 0;
 x->stm_buf = ((void*)0);
 x->obj = ((void*)0);
}
