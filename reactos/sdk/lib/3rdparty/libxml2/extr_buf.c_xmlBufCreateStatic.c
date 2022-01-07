
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufPtr ;
typedef int xmlBuf ;
struct TYPE_3__ {size_t compat_use; size_t compat_size; size_t use; size_t size; int * buffer; scalar_t__ error; int * content; int alloc; } ;


 size_t INT_MAX ;
 int XML_BUFFER_ALLOC_IMMUTABLE ;
 int xmlBufMemoryError (int *,char*) ;
 scalar_t__ xmlMalloc (int) ;

xmlBufPtr
xmlBufCreateStatic(void *mem, size_t size) {
    xmlBufPtr ret;

    if (mem == ((void*)0))
        return(((void*)0));

    ret = (xmlBufPtr) xmlMalloc(sizeof(xmlBuf));
    if (ret == ((void*)0)) {
 xmlBufMemoryError(((void*)0), "creating buffer");
        return(((void*)0));
    }
    if (size < INT_MAX) {
        ret->compat_use = size;
        ret->compat_size = size;
    } else {
        ret->compat_use = INT_MAX;
        ret->compat_size = INT_MAX;
    }
    ret->use = size;
    ret->size = size;
    ret->alloc = XML_BUFFER_ALLOC_IMMUTABLE;
    ret->content = (xmlChar *) mem;
    ret->error = 0;
    ret->buffer = ((void*)0);
    return(ret);
}
