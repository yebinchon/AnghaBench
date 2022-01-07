
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* item; } ;
typedef TYPE_1__ pdf_exec_menu_item_event_internal ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_2__ pdf_doc_event ;
typedef int fz_context ;


 scalar_t__ PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM ;

const char *pdf_access_exec_menu_item_event(fz_context *ctx, pdf_doc_event *event)
{
 const char *item = ((void*)0);

 if (event->type == PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM)
  item = ((pdf_exec_menu_item_event_internal *)event)->item;

 return item;
}
