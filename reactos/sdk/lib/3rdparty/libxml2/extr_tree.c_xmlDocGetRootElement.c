
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
typedef TYPE_2__ xmlDoc ;
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* next; } ;


 scalar_t__ XML_ELEMENT_NODE ;

xmlNodePtr
xmlDocGetRootElement(const xmlDoc *doc) {
    xmlNodePtr ret;

    if (doc == ((void*)0)) return(((void*)0));
    ret = doc->children;
    while (ret != ((void*)0)) {
 if (ret->type == XML_ELEMENT_NODE)
     return(ret);
        ret = ret->next;
    }
    return(ret);
}
