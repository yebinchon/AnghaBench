
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int xmlCharEncoding ;
typedef int xmlChar ;
struct TYPE_5__ {int buffer; int * closecallback; int readcallback; void* context; } ;


 TYPE_1__* xmlAllocParserInputBuffer (int ) ;
 int xmlBufAdd (int ,int const*,int) ;
 int xmlFree (TYPE_1__*) ;
 int xmlInputReadCallbackNop ;

xmlParserInputBufferPtr
xmlParserInputBufferCreateMem(const char *mem, int size, xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;
    int errcode;

    if (size < 0) return(((void*)0));
    if (mem == ((void*)0)) return(((void*)0));

    ret = xmlAllocParserInputBuffer(enc);
    if (ret != ((void*)0)) {
        ret->context = (void *) mem;
 ret->readcallback = xmlInputReadCallbackNop;
 ret->closecallback = ((void*)0);
 errcode = xmlBufAdd(ret->buffer, (const xmlChar *) mem, size);
 if (errcode != 0) {
     xmlFree(ret);
     return(((void*)0));
 }
    }

    return(ret);
}
