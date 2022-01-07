
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputBufferPtr ;
typedef int xmlCharEncoding ;
typedef scalar_t__ ptrdiff_t ;
struct TYPE_4__ {int closecallback; int readcallback; void* context; } ;


 TYPE_1__* xmlAllocParserInputBuffer (int ) ;
 int xmlFdClose ;
 int xmlFdRead ;

xmlParserInputBufferPtr
xmlParserInputBufferCreateFd(int fd, xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;

    if (fd < 0) return(((void*)0));

    ret = xmlAllocParserInputBuffer(enc);
    if (ret != ((void*)0)) {
        ret->context = (void *) (ptrdiff_t) fd;
 ret->readcallback = xmlFdRead;
 ret->closecallback = xmlFdClose;
    }

    return(ret);
}
