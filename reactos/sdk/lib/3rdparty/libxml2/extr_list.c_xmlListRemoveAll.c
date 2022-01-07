
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlListPtr ;


 scalar_t__ xmlListRemoveFirst (int *,void*) ;

int
xmlListRemoveAll(xmlListPtr l, void *data)
{
    int count=0;

    if (l == ((void*)0))
        return(0);

    while(xmlListRemoveFirst(l, data))
        count++;
    return count;
}
