
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlListPtr ;
typedef TYPE_2__* xmlLinkPtr ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {scalar_t__ (* linkCompare ) (int ,void*) ;TYPE_2__* sentinel; } ;


 scalar_t__ stub1 (int ,void*) ;
 TYPE_2__* xmlListLowerSearch (TYPE_1__*,void*) ;

__attribute__((used)) static xmlLinkPtr
xmlListLinkSearch(xmlListPtr l, void *data)
{
    xmlLinkPtr lk;
    if (l == ((void*)0))
        return(((void*)0));
    lk = xmlListLowerSearch(l, data);
    if (lk == l->sentinel)
        return ((void*)0);
    else {
        if (l->linkCompare(lk->data, data) ==0)
            return lk;
        return ((void*)0);
    }
}
