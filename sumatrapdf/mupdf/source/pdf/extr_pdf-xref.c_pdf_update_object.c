
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char type; int obj; scalar_t__ ofs; } ;
typedef TYPE_1__ pdf_xref_entry ;
typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int fz_warn (int *,char*,int,int) ;
 int pdf_delete_object (int *,int *,int) ;
 int pdf_drop_obj (int *,int ) ;
 TYPE_1__* pdf_get_incremental_xref_entry (int *,int *,int) ;
 int pdf_keep_obj (int *,int *) ;
 int pdf_set_obj_parent (int *,int *,int) ;
 int pdf_xref_len (int *,int *) ;

void
pdf_update_object(fz_context *ctx, pdf_document *doc, int num, pdf_obj *newobj)
{
 pdf_xref_entry *x;

 if (num <= 0 || num >= pdf_xref_len(ctx, doc))
 {
  fz_warn(ctx, "object out of range (%d 0 R); xref size %d", num, pdf_xref_len(ctx, doc));
  return;
 }

 if (!newobj)
 {
  pdf_delete_object(ctx, doc, num);
  return;
 }

 x = pdf_get_incremental_xref_entry(ctx, doc, num);

 pdf_drop_obj(ctx, x->obj);

 x->type = 'n';
 x->ofs = 0;
 x->obj = pdf_keep_obj(ctx, newobj);

 pdf_set_obj_parent(ctx, newobj, num);
}
