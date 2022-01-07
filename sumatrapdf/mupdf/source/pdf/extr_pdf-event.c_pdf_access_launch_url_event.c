
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int launch_url; } ;
typedef TYPE_1__ pdf_launch_url_event_internal ;
typedef int pdf_launch_url_event ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_2__ pdf_doc_event ;
typedef int fz_context ;


 scalar_t__ PDF_DOCUMENT_EVENT_LAUNCH_URL ;

pdf_launch_url_event *pdf_access_launch_url_event(fz_context *ctx, pdf_doc_event *event)
{
 pdf_launch_url_event *launch_url = ((void*)0);

 if (event->type == PDF_DOCUMENT_EVENT_LAUNCH_URL)
  launch_url = &((pdf_launch_url_event_internal *)event)->launch_url;

 return launch_url;
}
