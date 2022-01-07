
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlBufPtr ;
struct TYPE_4__ {scalar_t__ error; scalar_t__ size; } ;


 int xmlBufGrowInternal (TYPE_1__*,scalar_t__) ;

int
xmlBufInflate(xmlBufPtr buf, size_t len) {
    if (buf == ((void*)0)) return(-1);
    xmlBufGrowInternal(buf, len + buf->size);
    if (buf->error)
        return(-1);
    return(0);
}
