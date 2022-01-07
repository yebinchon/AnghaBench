
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xmlChar ;
typedef TYPE_1__* xmlBufPtr ;
typedef int xmlBuf ;
struct TYPE_5__ {size_t size; int compat_size; int * contentIO; scalar_t__* content; int alloc; int * buffer; scalar_t__ error; scalar_t__ use; scalar_t__ compat_use; } ;


 int xmlBufMemoryError (TYPE_1__*,char*) ;
 int xmlBufferAllocScheme ;
 int xmlFree (TYPE_1__*) ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlMallocAtomic (int) ;

xmlBufPtr
xmlBufCreateSize(size_t size) {
    xmlBufPtr ret;

    ret = (xmlBufPtr) xmlMalloc(sizeof(xmlBuf));
    if (ret == ((void*)0)) {
 xmlBufMemoryError(((void*)0), "creating buffer");
        return(((void*)0));
    }
    ret->compat_use = 0;
    ret->use = 0;
    ret->error = 0;
    ret->buffer = ((void*)0);
    ret->alloc = xmlBufferAllocScheme;
    ret->size = (size ? size+2 : 0);
    ret->compat_size = (int) ret->size;
    if (ret->size){
        ret->content = (xmlChar *) xmlMallocAtomic(ret->size * sizeof(xmlChar));
        if (ret->content == ((void*)0)) {
     xmlBufMemoryError(ret, "creating buffer");
            xmlFree(ret);
            return(((void*)0));
        }
        ret->content[0] = 0;
    } else
 ret->content = ((void*)0);
    ret->contentIO = ((void*)0);
    return(ret);
}
