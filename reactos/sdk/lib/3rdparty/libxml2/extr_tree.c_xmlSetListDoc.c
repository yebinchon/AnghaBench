
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlDocPtr ;
struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* next; int doc; } ;


 scalar_t__ XML_NAMESPACE_DECL ;
 int xmlSetTreeDoc (TYPE_1__*,int ) ;

void
xmlSetListDoc(xmlNodePtr list, xmlDocPtr doc) {
    xmlNodePtr cur;

    if ((list == ((void*)0)) || (list->type == XML_NAMESPACE_DECL))
 return;
    cur = list;
    while (cur != ((void*)0)) {
 if (cur->doc != doc)
     xmlSetTreeDoc(cur, doc);
 cur = cur->next;
    }
}
