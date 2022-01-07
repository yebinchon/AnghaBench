
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; int doc; } ;
typedef TYPE_1__ pdf_page ;
typedef int fz_context ;


 int pdf_execute_action (int *,int ,int ,char*) ;

void pdf_page_event_close(fz_context *ctx, pdf_page *page)
{
 pdf_execute_action(ctx, page->doc, page->obj, "AA/C");
}
