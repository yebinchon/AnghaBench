
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ name; struct TYPE_13__* last; struct TYPE_13__* next; struct TYPE_13__* parent; struct TYPE_13__* prev; int doc; int content; int * children; } ;


 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XML_TEXT_NODE ;
 TYPE_1__* xmlAddPropSibling (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int xmlFreeNode (TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlNodeAddContent (TYPE_1__*,int ) ;
 int xmlSetTreeDoc (TYPE_1__*,int ) ;
 int xmlUnlinkNode (TYPE_1__*) ;

xmlNodePtr
xmlAddSibling(xmlNodePtr cur, xmlNodePtr elem) {
    xmlNodePtr parent;

    if ((cur == ((void*)0)) || (cur->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if ((elem == ((void*)0)) || (elem->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if (cur == elem) {




 return(((void*)0));
    }





    if ((cur->type != XML_ATTRIBUTE_NODE) && (cur->parent != ((void*)0)) &&
 (cur->parent->children != ((void*)0)) &&
 (cur->parent->last != ((void*)0)) &&
 (cur->parent->last->next == ((void*)0))) {
 cur = cur->parent->last;
    } else {
 while (cur->next != ((void*)0)) cur = cur->next;
    }

    xmlUnlinkNode(elem);

    if ((cur->type == XML_TEXT_NODE) && (elem->type == XML_TEXT_NODE) &&
        (cur->name == elem->name)) {
 xmlNodeAddContent(cur, elem->content);
 xmlFreeNode(elem);
 return(cur);
    } else if (elem->type == XML_ATTRIBUTE_NODE) {
  return xmlAddPropSibling(cur, cur, elem);
    }

    if (elem->doc != cur->doc) {
 xmlSetTreeDoc(elem, cur->doc);
    }
    parent = cur->parent;
    elem->prev = cur;
    elem->next = ((void*)0);
    elem->parent = parent;
    cur->next = elem;
    if (parent != ((void*)0))
 parent->last = elem;

    return(elem);
}
