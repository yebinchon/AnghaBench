
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int * xmlDtdPtr ;
struct TYPE_5__ {scalar_t__ intSubset; TYPE_1__* children; } ;
typedef TYPE_2__ xmlDoc ;
struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* next; } ;


 scalar_t__ XML_DTD_NODE ;

xmlDtdPtr
xmlGetIntSubset(const xmlDoc *doc) {
    xmlNodePtr cur;

    if (doc == ((void*)0))
 return(((void*)0));
    cur = doc->children;
    while (cur != ((void*)0)) {
 if (cur->type == XML_DTD_NODE)
     return((xmlDtdPtr) cur);
 cur = cur->next;
    }
    return((xmlDtdPtr) doc->intSubset);
}
