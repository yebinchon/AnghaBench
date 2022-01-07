
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
struct TYPE_3__ {int const* content; } ;
typedef TYPE_1__ xmlBuffer ;



const xmlChar *
xmlBufferContent(const xmlBuffer *buf)
{
    if(!buf)
        return ((void*)0);

    return buf->content;
}
