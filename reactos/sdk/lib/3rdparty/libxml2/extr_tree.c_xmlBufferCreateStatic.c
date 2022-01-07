
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
typedef int xmlBuffer ;
struct TYPE_3__ {size_t use; size_t size; int * content; int alloc; } ;


 int XML_BUFFER_ALLOC_IMMUTABLE ;
 scalar_t__ xmlMalloc (int) ;
 int xmlTreeErrMemory (char*) ;

xmlBufferPtr
xmlBufferCreateStatic(void *mem, size_t size) {
    xmlBufferPtr ret;

    if ((mem == ((void*)0)) || (size == 0))
        return(((void*)0));

    ret = (xmlBufferPtr) xmlMalloc(sizeof(xmlBuffer));
    if (ret == ((void*)0)) {
 xmlTreeErrMemory("creating buffer");
        return(((void*)0));
    }
    ret->use = size;
    ret->size = size;
    ret->alloc = XML_BUFFER_ALLOC_IMMUTABLE;
    ret->content = (xmlChar *) mem;
    return(ret);
}
