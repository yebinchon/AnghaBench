
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef int xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {size_t length; int const* end; int const* cur; int const* base; } ;


 int xmlErrInternal (int ,char*,int *) ;
 int xmlErrMemory (int ,char*) ;
 int xmlGenericError (int ,char*,int const*) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlNewInputStream (int ) ;
 scalar_t__ xmlParserDebugEntities ;
 size_t xmlStrlen (int const*) ;

xmlParserInputPtr
xmlNewStringInputStream(xmlParserCtxtPtr ctxt, const xmlChar *buffer) {
    xmlParserInputPtr input;

    if (buffer == ((void*)0)) {
        xmlErrInternal(ctxt, "xmlNewStringInputStream string = NULL\n",
                ((void*)0));
 return(((void*)0));
    }
    if (xmlParserDebugEntities)
 xmlGenericError(xmlGenericErrorContext,
  "new fixed input: %.30s\n", buffer);
    input = xmlNewInputStream(ctxt);
    if (input == ((void*)0)) {
        xmlErrMemory(ctxt, "couldn't allocate a new input stream\n");
 return(((void*)0));
    }
    input->base = buffer;
    input->cur = buffer;
    input->length = xmlStrlen(buffer);
    input->end = &buffer[input->length];
    return(input);
}
