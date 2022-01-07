
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlAttrPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xmlFreeProp (TYPE_1__*) ;

void
xmlFreePropList(xmlAttrPtr cur) {
    xmlAttrPtr next;
    if (cur == ((void*)0)) return;
    while (cur != ((void*)0)) {
        next = cur->next;
        xmlFreeProp(cur);
 cur = next;
    }
}
