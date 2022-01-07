
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mail_doc; } ;
typedef TYPE_1__ pdf_mail_doc_event_internal ;
typedef int pdf_mail_doc_event ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_2__ pdf_doc_event ;
typedef int fz_context ;


 scalar_t__ PDF_DOCUMENT_EVENT_MAIL_DOC ;

pdf_mail_doc_event *pdf_access_mail_doc_event(fz_context *ctx, pdf_doc_event *event)
{
 pdf_mail_doc_event *mail_doc = ((void*)0);

 if (event->type == PDF_DOCUMENT_EVENT_MAIL_DOC)
  mail_doc = &((pdf_mail_doc_event_internal *)event)->mail_doc;

 return mail_doc;
}
