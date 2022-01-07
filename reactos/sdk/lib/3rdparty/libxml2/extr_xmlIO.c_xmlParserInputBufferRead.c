
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
struct TYPE_4__ {int buffer; int * readcallback; scalar_t__ error; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 scalar_t__ xmlBufGetAllocationScheme (int ) ;
 int xmlParserInputBufferGrow (TYPE_1__*,int) ;

int
xmlParserInputBufferRead(xmlParserInputBufferPtr in, int len) {
    if ((in == ((void*)0)) || (in->error)) return(-1);
    if (in->readcallback != ((void*)0))
 return(xmlParserInputBufferGrow(in, len));
    else if (xmlBufGetAllocationScheme(in->buffer) == XML_BUFFER_ALLOC_IMMUTABLE)
 return(0);
    else
        return(-1);
}
