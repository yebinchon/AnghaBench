
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ name; struct TYPE_8__* last; int * doc; struct TYPE_8__* parent; struct TYPE_8__* next; struct TYPE_8__* prev; int content; struct TYPE_8__* children; } ;


 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XML_TEXT_NODE ;
 int xmlFreeNode (TYPE_1__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlNodeAddContent (TYPE_1__*,int ) ;
 int xmlSetTreeDoc (TYPE_1__*,int *) ;

xmlNodePtr
xmlAddChildList(xmlNodePtr parent, xmlNodePtr cur) {
    xmlNodePtr prev;

    if ((parent == ((void*)0)) || (parent->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if ((cur == ((void*)0)) || (cur->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if ((cur->doc != ((void*)0)) && (parent->doc != ((void*)0)) &&
        (cur->doc != parent->doc)) {




    }





    if (parent->children == ((void*)0)) {
        parent->children = cur;
    } else {



 if ((cur->type == XML_TEXT_NODE) &&
     (parent->last->type == XML_TEXT_NODE) &&
     (cur->name == parent->last->name)) {
     xmlNodeAddContent(parent->last, cur->content);



     if (cur->next == ((void*)0)) {
  xmlFreeNode(cur);
  return(parent->last);
     }
     prev = cur;
     cur = cur->next;
     xmlFreeNode(prev);
 }
        prev = parent->last;
 prev->next = cur;
 cur->prev = prev;
    }
    while (cur->next != ((void*)0)) {
 cur->parent = parent;
 if (cur->doc != parent->doc) {
     xmlSetTreeDoc(cur, parent->doc);
 }
        cur = cur->next;
    }
    cur->parent = parent;

    if (cur->doc != parent->doc) {
        xmlSetTreeDoc(cur, parent->doc);
    }
    parent->last = cur;

    return(cur);
}
