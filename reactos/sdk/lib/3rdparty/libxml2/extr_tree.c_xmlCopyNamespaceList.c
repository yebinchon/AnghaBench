
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
struct TYPE_6__ {struct TYPE_6__* next; } ;


 TYPE_1__* xmlCopyNamespace (TYPE_1__*) ;

xmlNsPtr
xmlCopyNamespaceList(xmlNsPtr cur) {
    xmlNsPtr ret = ((void*)0);
    xmlNsPtr p = ((void*)0),q;

    while (cur != ((void*)0)) {
        q = xmlCopyNamespace(cur);
 if (p == ((void*)0)) {
     ret = p = q;
 } else {
     p->next = q;
     p = q;
 }
 cur = cur->next;
    }
    return(ret);
}
