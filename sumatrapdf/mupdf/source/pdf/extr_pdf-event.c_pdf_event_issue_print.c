
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int event_cb_data; int (* event_cb ) (int *,TYPE_1__*,TYPE_2__*,int ) ;} ;
typedef TYPE_1__ pdf_document ;
struct TYPE_7__ {int type; } ;
typedef TYPE_2__ pdf_doc_event ;
typedef int fz_context ;


 int PDF_DOCUMENT_EVENT_PRINT ;
 int stub1 (int *,TYPE_1__*,TYPE_2__*,int ) ;

void pdf_event_issue_print(fz_context *ctx, pdf_document *doc)
{
 pdf_doc_event e;

 e.type = PDF_DOCUMENT_EVENT_PRINT;

 if (doc->event_cb)
  doc->event_cb(ctx, doc, &e, doc->event_cb_data);
}
