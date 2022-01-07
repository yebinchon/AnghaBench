
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int (* readcallback ) (int ,char*,int) ;int compressed; int * buffer; int * raw; int rawconsumed; void* error; int * encoder; int context; } ;


 int MINLEN ;
 void* XML_ERR_NO_MEMORY ;
 void* XML_IO_BUFFER_FULL ;
 void* XML_IO_ENCODER ;
 void* XML_IO_NO_INPUT ;
 int __libxml2_xzcompressed (int ) ;
 int endOfInput ;
 int stub1 (int ,char*,int) ;
 int xmlBufAdd (int *,int const*,int) ;
 int xmlBufAddLen (int *,int) ;
 scalar_t__ xmlBufAvail (int *) ;
 int * xmlBufCreate () ;
 scalar_t__ xmlBufEnd (int *) ;
 scalar_t__ xmlBufGrow (int *,int) ;
 unsigned int xmlBufUse (int *) ;
 int xmlCharEncInput (TYPE_1__*,int) ;
 int xmlGenericError (int ,char*,int,unsigned int) ;
 int xmlGenericErrorContext ;
 int xmlIOErr (void*,int *) ;
 int xmlIOErrMemory (char*) ;
 int xmlXzfileRead (int ,char*,int) ;

int
xmlParserInputBufferGrow(xmlParserInputBufferPtr in, int len) {
    char *buffer = ((void*)0);
    int res = 0;
    int nbchars = 0;

    if ((in == ((void*)0)) || (in->error)) return(-1);
    if ((len <= MINLEN) && (len != 4))
        len = MINLEN;

    if (xmlBufAvail(in->buffer) <= 0) {
 xmlIOErr(XML_IO_BUFFER_FULL, ((void*)0));
 in->error = XML_IO_BUFFER_FULL;
 return(-1);
    }

    if (xmlBufGrow(in->buffer, len + 1) < 0) {
        xmlIOErrMemory("growing input buffer");
        in->error = XML_ERR_NO_MEMORY;
        return(-1);
    }
    buffer = (char *)xmlBufEnd(in->buffer);




    if (in->readcallback != ((void*)0)) {
 res = in->readcallback(in->context, &buffer[0], len);
 if (res <= 0)
     in->readcallback = endOfInput;
    } else {
 xmlIOErr(XML_IO_NO_INPUT, ((void*)0));
 in->error = XML_IO_NO_INPUT;
 return(-1);
    }
    if (res < 0) {
 return(-1);
    }




    if (in->compressed == -1) {




    }

    len = res;
    if (in->encoder != ((void*)0)) {
        unsigned int use;




        if (in->raw == ((void*)0)) {
     in->raw = xmlBufCreate();
 }
 res = xmlBufAdd(in->raw, (const xmlChar *) buffer, len);
 if (res != 0)
     return(-1);




 use = xmlBufUse(in->raw);
 nbchars = xmlCharEncInput(in, 1);
 if (nbchars < 0) {
     xmlIOErr(XML_IO_ENCODER, ((void*)0));
     in->error = XML_IO_ENCODER;
     return(-1);
 }
 in->rawconsumed += (use - xmlBufUse(in->raw));
    } else {
 nbchars = len;
        xmlBufAddLen(in->buffer, nbchars);
    }





    return(nbchars);
}
