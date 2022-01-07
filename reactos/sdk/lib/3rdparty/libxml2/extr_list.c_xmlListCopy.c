
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlListPtr ;
typedef TYPE_2__* xmlLinkPtr ;
struct TYPE_8__ {int data; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* sentinel; } ;


 int xmlListDelete (TYPE_1__*) ;
 scalar_t__ xmlListInsert (TYPE_1__*,int ) ;

int
xmlListCopy(xmlListPtr cur, const xmlListPtr old)
{

    xmlLinkPtr lk;

    if ((old == ((void*)0)) || (cur == ((void*)0)))
        return(1);
    for(lk = old->sentinel->next; lk != old->sentinel; lk = lk->next) {
        if (0 !=xmlListInsert(cur, lk->data)) {
            xmlListDelete(cur);
            return (1);
        }
    }
    return (0);
}
