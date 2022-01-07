
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ name; TYPE_1__* parent; struct TYPE_16__* prev; struct TYPE_16__* next; int doc; int content; } ;
struct TYPE_15__ {TYPE_2__* last; } ;


 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XML_TEXT_NODE ;
 TYPE_2__* xmlAddPropSibling (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int xmlFree (int *) ;
 int xmlFreeNode (TYPE_2__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlNodeAddContent (TYPE_2__*,int ) ;
 int xmlNodeSetContent (TYPE_2__*,int *) ;
 int xmlSetTreeDoc (TYPE_2__*,int ) ;
 int * xmlStrcat (int *,int ) ;
 int * xmlStrdup (int ) ;
 int xmlUnlinkNode (TYPE_2__*) ;

xmlNodePtr
xmlAddNextSibling(xmlNodePtr cur, xmlNodePtr elem) {
    if ((cur == ((void*)0)) || (cur->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }
    if ((elem == ((void*)0)) || (elem->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if (cur == elem) {




 return(((void*)0));
    }

    xmlUnlinkNode(elem);

    if (elem->type == XML_TEXT_NODE) {
 if (cur->type == XML_TEXT_NODE) {
     xmlNodeAddContent(cur, elem->content);
     xmlFreeNode(elem);
     return(cur);
 }
 if ((cur->next != ((void*)0)) && (cur->next->type == XML_TEXT_NODE) &&
            (cur->name == cur->next->name)) {
     xmlChar *tmp;

     tmp = xmlStrdup(elem->content);
     tmp = xmlStrcat(tmp, cur->next->content);
     xmlNodeSetContent(cur->next, tmp);
     xmlFree(tmp);
     xmlFreeNode(elem);
     return(cur->next);
 }
    } else if (elem->type == XML_ATTRIBUTE_NODE) {
  return xmlAddPropSibling(cur, cur, elem);
    }

    if (elem->doc != cur->doc) {
 xmlSetTreeDoc(elem, cur->doc);
    }
    elem->parent = cur->parent;
    elem->prev = cur;
    elem->next = cur->next;
    cur->next = elem;
    if (elem->next != ((void*)0))
 elem->next->prev = elem;
    if ((elem->parent != ((void*)0)) && (elem->parent->last == cur))
 elem->parent->last = elem;
    return(elem);
}
