
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_4__ {scalar_t__ alloc; } ;


 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ;
 int xmlBufferCCat (TYPE_1__*,char const*) ;

void
xmlBufferWriteChar(xmlBufferPtr buf, const char *string) {
    if (buf == ((void*)0))
        return;
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return;
    xmlBufferCCat(buf, string);
}
