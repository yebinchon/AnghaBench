
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int obj; TYPE_1__* page; } ;
typedef TYPE_2__ pdf_annot ;
typedef int fz_context ;
struct TYPE_4__ {int doc; } ;


 int A ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_execute_action (int *,int ,int ,char*) ;
 int pdf_execute_action_chain (int *,int ,int ,char*,int *) ;

void pdf_annot_event_up(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *action = pdf_dict_get(ctx, annot->obj, PDF_NAME(A));
 if (action)
  pdf_execute_action_chain(ctx, annot->page->doc, annot->obj, "A", action);
 else
  pdf_execute_action(ctx, annot->page->doc, annot->obj, "AA/U");
}
