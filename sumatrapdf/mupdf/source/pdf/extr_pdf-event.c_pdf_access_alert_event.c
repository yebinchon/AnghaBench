
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ pdf_doc_event ;
struct TYPE_5__ {int alert; } ;
typedef TYPE_2__ pdf_alert_event_internal ;
typedef int pdf_alert_event ;
typedef int fz_context ;


 scalar_t__ PDF_DOCUMENT_EVENT_ALERT ;

pdf_alert_event *pdf_access_alert_event(fz_context *ctx, pdf_doc_event *event)
{
 pdf_alert_event *alert = ((void*)0);

 if (event->type == PDF_DOCUMENT_EVENT_ALERT)
  alert = &((pdf_alert_event_internal *)event)->alert;

 return alert;
}
