
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef TYPE_2__* xmlParserInputBufferPtr ;
typedef int xmlParserCtxtPtr ;
typedef scalar_t__ xmlCharEncoding ;
struct TYPE_8__ {int buffer; } ;
struct TYPE_7__ {TYPE_2__* buf; int * filename; } ;


 scalar_t__ XML_CHAR_ENCODING_NONE ;
 int xmlBufResetInput (int ,TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 TYPE_1__* xmlNewInputStream (int ) ;
 scalar_t__ xmlParserDebugEntities ;
 int xmlSwitchEncoding (int ,scalar_t__) ;

xmlParserInputPtr
xmlNewIOInputStream(xmlParserCtxtPtr ctxt, xmlParserInputBufferPtr input,
             xmlCharEncoding enc) {
    xmlParserInputPtr inputStream;

    if (input == ((void*)0)) return(((void*)0));
    if (xmlParserDebugEntities)
 xmlGenericError(xmlGenericErrorContext, "new input from I/O\n");
    inputStream = xmlNewInputStream(ctxt);
    if (inputStream == ((void*)0)) {
 return(((void*)0));
    }
    inputStream->filename = ((void*)0);
    inputStream->buf = input;
    xmlBufResetInput(inputStream->buf->buffer, inputStream);

    if (enc != XML_CHAR_ENCODING_NONE) {
        xmlSwitchEncoding(ctxt, enc);
    }

    return(inputStream);
}
