
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef TYPE_2__* xmlParserInputBufferPtr ;
typedef int * xmlParserCtxtPtr ;
struct TYPE_9__ {int buffer; } ;
struct TYPE_8__ {TYPE_2__* buf; int * filename; } ;


 int XML_CHAR_ENCODING_NONE ;
 int inputPush (int *,TYPE_1__*) ;
 int xmlBufResetInput (int ,TYPE_1__*) ;
 int xmlFreeParserCtxt (int *) ;
 int xmlFreeParserInputBuffer (TYPE_2__*) ;
 TYPE_1__* xmlNewInputStream (int *) ;
 int * xmlNewParserCtxt () ;
 TYPE_2__* xmlParserInputBufferCreateMem (char const*,int,int ) ;

xmlParserCtxtPtr
xmlCreateMemoryParserCtxt(const char *buffer, int size) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr input;
    xmlParserInputBufferPtr buf;

    if (buffer == ((void*)0))
 return(((void*)0));
    if (size <= 0)
 return(((void*)0));

    ctxt = xmlNewParserCtxt();
    if (ctxt == ((void*)0))
 return(((void*)0));


    buf = xmlParserInputBufferCreateMem(buffer, size, XML_CHAR_ENCODING_NONE);
    if (buf == ((void*)0)) {
 xmlFreeParserCtxt(ctxt);
 return(((void*)0));
    }

    input = xmlNewInputStream(ctxt);
    if (input == ((void*)0)) {
 xmlFreeParserInputBuffer(buf);
 xmlFreeParserCtxt(ctxt);
 return(((void*)0));
    }

    input->filename = ((void*)0);
    input->buf = buf;
    xmlBufResetInput(input->buf->buffer, input);

    inputPush(ctxt, input);
    return(ctxt);
}
