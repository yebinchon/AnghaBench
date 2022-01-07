
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* event_cb_data; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;



void *pdf_get_doc_event_callback_data(fz_context *ctx, pdf_document *doc)
{
 return doc->event_cb_data;
}
