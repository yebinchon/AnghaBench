
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* xmlListPtr ;
struct TYPE_7__ {TYPE_1__* sentinel; } ;
struct TYPE_6__ {int next; } ;


 int xmlLinkDeallocator (TYPE_2__*,int ) ;
 int xmlListEmpty (TYPE_2__*) ;

void
xmlListPopFront(xmlListPtr l)
{
    if(!xmlListEmpty(l))
        xmlLinkDeallocator(l, l->sentinel->next);
}
