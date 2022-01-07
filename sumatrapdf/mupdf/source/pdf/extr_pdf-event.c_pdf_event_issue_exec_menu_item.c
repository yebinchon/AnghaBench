
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_7__ {char const* item; TYPE_1__ base; } ;
typedef TYPE_2__ pdf_exec_menu_item_event_internal ;
struct TYPE_8__ {int event_cb_data; int (* event_cb ) (int *,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_3__ pdf_document ;
typedef int pdf_doc_event ;
typedef int fz_context ;


 int PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM ;
 int stub1 (int *,TYPE_3__*,int *,int ) ;

void pdf_event_issue_exec_menu_item(fz_context *ctx, pdf_document *doc, const char *item)
{
 if (doc->event_cb)
 {
  pdf_exec_menu_item_event_internal ievent;
  ievent.base.type = PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM;
  ievent.item = item;

  doc->event_cb(ctx, doc, (pdf_doc_event *)&ievent, doc->event_cb_data);
 }
}
