
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlBufPtr ;
struct TYPE_4__ {scalar_t__ error; } ;


 size_t xmlBufGrowInternal (TYPE_1__*,int) ;

int
xmlBufGrow(xmlBufPtr buf, int len) {
    size_t ret;

    if ((buf == ((void*)0)) || (len < 0)) return(-1);
    if (len == 0)
        return(0);
    ret = xmlBufGrowInternal(buf, len);
    if (buf->error != 0)
        return(-1);
    return((int) ret);
}
