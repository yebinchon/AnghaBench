
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char const* url; int new_frame; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_9__ {TYPE_2__ launch_url; TYPE_1__ base; } ;
typedef TYPE_3__ pdf_launch_url_event_internal ;
struct TYPE_10__ {int event_cb_data; int (* event_cb ) (int *,TYPE_4__*,int *,int ) ;} ;
typedef TYPE_4__ pdf_document ;
typedef int pdf_doc_event ;
typedef int fz_context ;


 int PDF_DOCUMENT_EVENT_LAUNCH_URL ;
 int stub1 (int *,TYPE_4__*,int *,int ) ;

void pdf_event_issue_launch_url(fz_context *ctx, pdf_document *doc, const char *url, int new_frame)
{
 if (doc->event_cb)
 {
  pdf_launch_url_event_internal e;

  e.base.type = PDF_DOCUMENT_EVENT_LAUNCH_URL;
  e.launch_url.url = url;
  e.launch_url.new_frame = new_frame;
  doc->event_cb(ctx, doc, (pdf_doc_event *)&e, doc->event_cb_data);
 }
}
