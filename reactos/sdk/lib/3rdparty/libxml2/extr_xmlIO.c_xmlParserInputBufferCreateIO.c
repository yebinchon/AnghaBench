
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int * xmlInputReadCallback ;
typedef int xmlInputCloseCallback ;
typedef int xmlCharEncoding ;
struct TYPE_4__ {int closecallback; int * readcallback; void* context; } ;


 TYPE_1__* xmlAllocParserInputBuffer (int ) ;

xmlParserInputBufferPtr
xmlParserInputBufferCreateIO(xmlInputReadCallback ioread,
  xmlInputCloseCallback ioclose, void *ioctx, xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;

    if (ioread == ((void*)0)) return(((void*)0));

    ret = xmlAllocParserInputBuffer(enc);
    if (ret != ((void*)0)) {
        ret->context = (void *) ioctx;
 ret->readcallback = ioread;
 ret->closecallback = ioclose;
    }

    return(ret);
}
