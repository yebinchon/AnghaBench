
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int xmlParserInputBuffer ;
typedef int xmlCharEncoding ;
struct TYPE_5__ {int compressed; scalar_t__ rawconsumed; int * context; int * closecallback; int * readcallback; int * raw; int * encoder; int * buffer; } ;


 int XML_BUFFER_ALLOC_DOUBLEIT ;
 int memset (TYPE_1__*,int ,size_t) ;
 void* xmlBufCreateSize (int) ;
 int xmlBufSetAllocationScheme (int *,int ) ;
 int xmlDefaultBufferSize ;
 int xmlFree (TYPE_1__*) ;
 int * xmlGetCharEncodingHandler (int ) ;
 int xmlIOErrMemory (char*) ;
 scalar_t__ xmlMalloc (int) ;

xmlParserInputBufferPtr
xmlAllocParserInputBuffer(xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;

    ret = (xmlParserInputBufferPtr) xmlMalloc(sizeof(xmlParserInputBuffer));
    if (ret == ((void*)0)) {
 xmlIOErrMemory("creating input buffer");
 return(((void*)0));
    }
    memset(ret, 0, (size_t) sizeof(xmlParserInputBuffer));
    ret->buffer = xmlBufCreateSize(2 * xmlDefaultBufferSize);
    if (ret->buffer == ((void*)0)) {
        xmlFree(ret);
 return(((void*)0));
    }
    xmlBufSetAllocationScheme(ret->buffer, XML_BUFFER_ALLOC_DOUBLEIT);
    ret->encoder = xmlGetCharEncodingHandler(enc);
    if (ret->encoder != ((void*)0))
        ret->raw = xmlBufCreateSize(2 * xmlDefaultBufferSize);
    else
        ret->raw = ((void*)0);
    ret->readcallback = ((void*)0);
    ret->closecallback = ((void*)0);
    ret->context = ((void*)0);
    ret->compressed = -1;
    ret->rawconsumed = 0;

    return(ret);
}
