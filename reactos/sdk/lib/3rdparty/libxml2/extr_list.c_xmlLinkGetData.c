
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlLinkPtr ;
struct TYPE_3__ {void* data; } ;



void *
xmlLinkGetData(xmlLinkPtr lk)
{
    if (lk == ((void*)0))
        return(((void*)0));
    return lk->data;
}
