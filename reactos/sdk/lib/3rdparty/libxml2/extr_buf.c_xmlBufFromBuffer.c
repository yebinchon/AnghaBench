
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlBufferPtr ;
typedef TYPE_2__* xmlBufPtr ;
typedef int xmlBuf ;
struct TYPE_6__ {int contentIO; int content; int alloc; TYPE_1__* buffer; scalar_t__ error; int compat_size; int compat_use; int size; int use; } ;
struct TYPE_5__ {int contentIO; int content; int alloc; int size; int use; } ;


 int xmlBufMemoryError (int *,char*) ;
 scalar_t__ xmlMalloc (int) ;

xmlBufPtr
xmlBufFromBuffer(xmlBufferPtr buffer) {
    xmlBufPtr ret;

    if (buffer == ((void*)0))
        return(((void*)0));

    ret = (xmlBufPtr) xmlMalloc(sizeof(xmlBuf));
    if (ret == ((void*)0)) {
 xmlBufMemoryError(((void*)0), "creating buffer");
        return(((void*)0));
    }
    ret->use = buffer->use;
    ret->size = buffer->size;
    ret->compat_use = buffer->use;
    ret->compat_size = buffer->size;
    ret->error = 0;
    ret->buffer = buffer;
    ret->alloc = buffer->alloc;
    ret->content = buffer->content;
    ret->contentIO = buffer->contentIO;

    return(ret);
}
