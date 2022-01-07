
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ (* xmlListWalker ) (int ,void*) ;
typedef TYPE_1__* xmlListPtr ;
typedef TYPE_2__* xmlLinkPtr ;
struct TYPE_5__ {int data; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* sentinel; } ;



void
xmlListWalk(xmlListPtr l, xmlListWalker walker, void *user) {
    xmlLinkPtr lk;

    if ((l == ((void*)0)) || (walker == ((void*)0)))
        return;
    for(lk = l->sentinel->next; lk != l->sentinel; lk = lk->next) {
        if((walker(lk->data, user)) == 0)
                break;
    }
}
