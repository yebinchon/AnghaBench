
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xmlListPtr ;
typedef TYPE_1__* xmlLinkPtr ;
struct TYPE_3__ {void* data; } ;


 TYPE_1__* xmlListLinkReverseSearch (int *,void*) ;

void *
xmlListReverseSearch(xmlListPtr l, void *data)
{
    xmlLinkPtr lk;
    if (l == ((void*)0))
        return(((void*)0));
    lk = xmlListLinkReverseSearch(l, data);
    if (lk)
        return (lk->data);
    return ((void*)0);
}
