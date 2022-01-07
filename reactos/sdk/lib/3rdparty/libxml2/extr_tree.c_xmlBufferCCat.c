
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_4__ {scalar_t__ alloc; scalar_t__ use; scalar_t__ size; char* content; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 int XML_ERR_NO_MEMORY ;
 int xmlBufferResize (TYPE_1__*,scalar_t__) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlTreeErrMemory (char*) ;

int
xmlBufferCCat(xmlBufferPtr buf, const char *str) {
    const char *cur;

    if (buf == ((void*)0))
        return(-1);
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return -1;
    if (str == ((void*)0)) {




 return -1;
    }
    for (cur = str;*cur != 0;cur++) {
        if (buf->use + 10 >= buf->size) {
            if (!xmlBufferResize(buf, buf->use+10)){
  xmlTreeErrMemory("growing buffer");
                return XML_ERR_NO_MEMORY;
            }
        }
        buf->content[buf->use++] = *cur;
    }
    buf->content[buf->use] = 0;
    return 0;
}
