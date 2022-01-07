
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int (* op_Q ) (int *,TYPE_1__*) ;int (* op_Do_form ) (int *,TYPE_1__*,int *,scalar_t__,int ) ;int (* op_cm ) (int *,TYPE_1__*,int ,int ,int ,int ,int ,int ) ;int (* op_q ) (int *,TYPE_1__*) ;scalar_t__ usage; } ;
typedef TYPE_1__ pdf_processor ;
typedef int pdf_page ;
struct TYPE_16__ {int ocg; } ;
typedef TYPE_2__ pdf_document ;
struct TYPE_17__ {scalar_t__ ap; int obj; } ;
typedef TYPE_3__ pdf_annot ;
struct TYPE_18__ {int f; int e; int d; int c; int b; int a; } ;
typedef TYPE_4__ fz_matrix ;
typedef int fz_cookie ;
typedef int fz_context ;


 int F ;
 int OC ;
 int PDF_ANNOT_IS_HIDDEN ;
 int PDF_ANNOT_IS_INVISIBLE ;
 int PDF_ANNOT_IS_NO_VIEW ;
 int PDF_ANNOT_IS_PRINT ;
 scalar_t__ PDF_ANNOT_POPUP ;
 int PDF_NAME (int ) ;
 TYPE_4__ pdf_annot_transform (int *,TYPE_3__*) ;
 scalar_t__ pdf_annot_type (int *,TYPE_3__*) ;
 int pdf_dict_get (int *,int ,int ) ;
 int pdf_dict_get_int (int *,int ,int ) ;
 scalar_t__ pdf_is_hidden_ocg (int *,int ,int *,scalar_t__,int ) ;
 int pdf_page_resources (int *,int *) ;
 int strcmp (scalar_t__,char*) ;
 int stub1 (int *,TYPE_1__*) ;
 int stub2 (int *,TYPE_1__*,int ,int ,int ,int ,int ,int ) ;
 int stub3 (int *,TYPE_1__*,int *,scalar_t__,int ) ;
 int stub4 (int *,TYPE_1__*) ;

void
pdf_process_annot(fz_context *ctx, pdf_processor *proc, pdf_document *doc, pdf_page *page, pdf_annot *annot, fz_cookie *cookie)
{
 int flags = pdf_dict_get_int(ctx, annot->obj, PDF_NAME(F));

 if (flags & (PDF_ANNOT_IS_INVISIBLE | PDF_ANNOT_IS_HIDDEN))
  return;


 if (pdf_annot_type(ctx, annot) == PDF_ANNOT_POPUP)
  return;

 if (proc->usage)
 {
  if (!strcmp(proc->usage, "Print") && !(flags & PDF_ANNOT_IS_PRINT))
   return;
  if (!strcmp(proc->usage, "View") && (flags & PDF_ANNOT_IS_NO_VIEW))
   return;
 }




 if (pdf_is_hidden_ocg(ctx, doc->ocg, ((void*)0), proc->usage, pdf_dict_get(ctx, annot->obj, PDF_NAME(OC))))
  return;

 if (proc->op_q && proc->op_cm && proc->op_Do_form && proc->op_Q && annot->ap)
 {
  fz_matrix matrix = pdf_annot_transform(ctx, annot);
  proc->op_q(ctx, proc);
  proc->op_cm(ctx, proc,
   matrix.a, matrix.b,
   matrix.c, matrix.d,
   matrix.e, matrix.f);
  proc->op_Do_form(ctx, proc, ((void*)0), annot->ap, pdf_page_resources(ctx, page));
  proc->op_Q(ctx, proc);
 }
}
