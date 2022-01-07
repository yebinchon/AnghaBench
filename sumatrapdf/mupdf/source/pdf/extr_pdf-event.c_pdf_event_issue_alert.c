
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int event_cb_data; int (* event_cb ) (int *,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_2__ pdf_document ;
typedef int pdf_doc_event ;
struct TYPE_6__ {int type; } ;
struct TYPE_8__ {int alert; TYPE_1__ base; } ;
typedef TYPE_3__ pdf_alert_event_internal ;
typedef int pdf_alert_event ;
typedef int fz_context ;


 int PDF_DOCUMENT_EVENT_ALERT ;
 int stub1 (int *,TYPE_2__*,int *,int ) ;

void pdf_event_issue_alert(fz_context *ctx, pdf_document *doc, pdf_alert_event *alert)
{
 if (doc->event_cb)
 {
  pdf_alert_event_internal ievent;
  ievent.base.type = PDF_DOCUMENT_EVENT_ALERT;
  ievent.alert = *alert;

  doc->event_cb(ctx, doc, (pdf_doc_event *)&ievent, doc->event_cb_data);

  *alert = ievent.alert;
 }
}
