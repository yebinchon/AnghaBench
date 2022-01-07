
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xmlFreeNs (TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

void
xmlFreeNsList(xmlNsPtr cur) {
    xmlNsPtr next;
    if (cur == ((void*)0)) {




 return;
    }
    while (cur != ((void*)0)) {
        next = cur->next;
        xmlFreeNs(cur);
 cur = next;
    }
}
