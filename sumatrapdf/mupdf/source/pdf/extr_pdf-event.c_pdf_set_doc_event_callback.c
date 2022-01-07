
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* event_cb_data; int * event_cb; } ;
typedef TYPE_1__ pdf_document ;
typedef int pdf_doc_event_cb ;
typedef int fz_context ;



void pdf_set_doc_event_callback(fz_context *ctx, pdf_document *doc, pdf_doc_event_cb *fn, void *data)
{
 doc->event_cb = fn;
 doc->event_cb_data = data;
}
