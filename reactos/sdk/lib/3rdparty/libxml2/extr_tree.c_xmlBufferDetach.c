
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_3__ {scalar_t__ alloc; scalar_t__ use; scalar_t__ size; int * content; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;

xmlChar *
xmlBufferDetach(xmlBufferPtr buf) {
    xmlChar *ret;

    if (buf == ((void*)0))
        return(((void*)0));
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE)
        return(((void*)0));

    ret = buf->content;
    buf->content = ((void*)0);
    buf->size = 0;
    buf->use = 0;

    return ret;
}
