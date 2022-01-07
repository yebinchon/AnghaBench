
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
struct TYPE_4__ {int * buffer; int context; int (* closecallback ) (int ) ;int * encoder; int * raw; } ;


 int stub1 (int ) ;
 int xmlBufFree (int *) ;
 int xmlCharEncCloseFunc (int *) ;
 int xmlFree (TYPE_1__*) ;

void
xmlFreeParserInputBuffer(xmlParserInputBufferPtr in) {
    if (in == ((void*)0)) return;

    if (in->raw) {
        xmlBufFree(in->raw);
 in->raw = ((void*)0);
    }
    if (in->encoder != ((void*)0)) {
        xmlCharEncCloseFunc(in->encoder);
    }
    if (in->closecallback != ((void*)0)) {
 in->closecallback(in->context);
    }
    if (in->buffer != ((void*)0)) {
        xmlBufFree(in->buffer);
 in->buffer = ((void*)0);
    }

    xmlFree(in);
}
