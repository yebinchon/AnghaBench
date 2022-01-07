
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef TYPE_2__* xmlAttrPtr ;
struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* prev; } ;
struct TYPE_9__ {scalar_t__ type; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 TYPE_2__* xmlCopyProp (TYPE_1__*,TYPE_2__*) ;

xmlAttrPtr
xmlCopyPropList(xmlNodePtr target, xmlAttrPtr cur) {
    xmlAttrPtr ret = ((void*)0);
    xmlAttrPtr p = ((void*)0),q;

    if ((target != ((void*)0)) && (target->type != XML_ELEMENT_NODE))
        return(((void*)0));
    while (cur != ((void*)0)) {
        q = xmlCopyProp(target, cur);
 if (q == ((void*)0))
     return(((void*)0));
 if (p == ((void*)0)) {
     ret = p = q;
 } else {
     p->next = q;
     q->prev = p;
     p = q;
 }
 cur = cur->next;
    }
    return(ret);
}
