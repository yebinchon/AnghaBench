
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlListPtr ;
typedef TYPE_2__* xmlLinkPtr ;
struct TYPE_6__ {struct TYPE_6__* prev; int data; } ;
struct TYPE_5__ {scalar_t__ (* linkCompare ) (int ,void*) ;TYPE_2__* sentinel; } ;


 scalar_t__ stub1 (int ,void*) ;

__attribute__((used)) static xmlLinkPtr
xmlListHigherSearch(xmlListPtr l, void *data)
{
    xmlLinkPtr lk;

    if (l == ((void*)0))
        return(((void*)0));
    for(lk = l->sentinel->prev;lk != l->sentinel && l->linkCompare(lk->data, data) >0 ;lk = lk->prev);
    return lk;
}
