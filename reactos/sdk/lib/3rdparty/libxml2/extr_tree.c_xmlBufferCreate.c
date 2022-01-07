
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
typedef int xmlBuffer ;
struct TYPE_4__ {int size; int * contentIO; scalar_t__* content; int alloc; scalar_t__ use; } ;


 int xmlBufferAllocScheme ;
 int xmlDefaultBufferSize ;
 int xmlFree (TYPE_1__*) ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlMallocAtomic (int) ;
 int xmlTreeErrMemory (char*) ;

xmlBufferPtr
xmlBufferCreate(void) {
    xmlBufferPtr ret;

    ret = (xmlBufferPtr) xmlMalloc(sizeof(xmlBuffer));
    if (ret == ((void*)0)) {
 xmlTreeErrMemory("creating buffer");
        return(((void*)0));
    }
    ret->use = 0;
    ret->size = xmlDefaultBufferSize;
    ret->alloc = xmlBufferAllocScheme;
    ret->content = (xmlChar *) xmlMallocAtomic(ret->size * sizeof(xmlChar));
    if (ret->content == ((void*)0)) {
 xmlTreeErrMemory("creating buffer");
 xmlFree(ret);
        return(((void*)0));
    }
    ret->content[0] = 0;
    ret->contentIO = ((void*)0);
    return(ret);
}
