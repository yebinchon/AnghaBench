
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_4__ {scalar_t__ alloc; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 int xmlBufferAdd (TYPE_1__*,int const*,int) ;

int
xmlBufferCat(xmlBufferPtr buf, const xmlChar *str) {
    if (buf == ((void*)0))
        return(-1);
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return -1;
    if (str == ((void*)0)) return -1;
    return xmlBufferAdd(buf, str, -1);
}
