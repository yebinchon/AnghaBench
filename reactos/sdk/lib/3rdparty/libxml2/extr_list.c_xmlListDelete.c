
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlListPtr ;
struct TYPE_5__ {struct TYPE_5__* sentinel; } ;


 int xmlFree (TYPE_1__*) ;
 int xmlListClear (TYPE_1__*) ;

void xmlListDelete(xmlListPtr l)
{
    if (l == ((void*)0))
        return;

    xmlListClear(l);
    xmlFree(l->sentinel);
    xmlFree(l);
}
