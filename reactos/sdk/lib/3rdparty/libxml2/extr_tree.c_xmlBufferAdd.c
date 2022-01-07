
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_4__ {scalar_t__ alloc; int use; unsigned int size; scalar_t__* content; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 int XML_ERR_NO_MEMORY ;
 int memmove (scalar_t__*,int const*,int) ;
 int xmlBufferResize (TYPE_1__*,unsigned int) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlStrlen (int const*) ;
 int xmlTreeErrMemory (char*) ;

int
xmlBufferAdd(xmlBufferPtr buf, const xmlChar *str, int len) {
    unsigned int needSize;

    if ((str == ((void*)0)) || (buf == ((void*)0))) {
 return -1;
    }
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return -1;
    if (len < -1) {




 return -1;
    }
    if (len == 0) return 0;

    if (len < 0)
        len = xmlStrlen(str);

    if (len < 0) return -1;
    if (len == 0) return 0;

    needSize = buf->use + len + 2;
    if (needSize > buf->size){
        if (!xmlBufferResize(buf, needSize)){
     xmlTreeErrMemory("growing buffer");
            return XML_ERR_NO_MEMORY;
        }
    }

    memmove(&buf->content[buf->use], str, len*sizeof(xmlChar));
    buf->use += len;
    buf->content[buf->use] = 0;
    return 0;
}
