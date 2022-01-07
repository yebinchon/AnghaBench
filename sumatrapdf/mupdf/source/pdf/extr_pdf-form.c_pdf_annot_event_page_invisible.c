
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int obj; TYPE_1__* page; } ;
typedef TYPE_2__ pdf_annot ;
typedef int fz_context ;
struct TYPE_4__ {int doc; } ;


 int pdf_execute_action (int *,int ,int ,char*) ;

void pdf_annot_event_page_invisible(fz_context *ctx, pdf_annot *annot)
{
 pdf_execute_action(ctx, annot->page->doc, annot->obj, "AA/PI");
}
