
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_16__ {scalar_t__ type; struct TYPE_16__* prev; struct TYPE_16__* next; } ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ name; scalar_t__ doc; struct TYPE_15__* last; struct TYPE_15__* prev; struct TYPE_15__* next; struct TYPE_15__* children; TYPE_3__* properties; TYPE_1__* ns; int * content; struct TYPE_15__* parent; } ;
struct TYPE_14__ {int * href; } ;


 scalar_t__ XML_ATTRIBUTE_DECL ;
 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XML_TEXT_NODE ;
 int xmlFreeNode (TYPE_2__*) ;
 int xmlFreeProp (TYPE_3__*) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 TYPE_3__* xmlHasNsProp (TYPE_2__*,scalar_t__,int *) ;
 int xmlNodeAddContent (TYPE_2__*,int *) ;
 int xmlSetTreeDoc (TYPE_2__*,scalar_t__) ;
 int xmlUnlinkNode (TYPE_2__*) ;

xmlNodePtr
xmlAddChild(xmlNodePtr parent, xmlNodePtr cur) {
    xmlNodePtr prev;

    if ((parent == ((void*)0)) || (parent->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if ((cur == ((void*)0)) || (cur->type == XML_NAMESPACE_DECL)) {




 return(((void*)0));
    }

    if (parent == cur) {




 return(((void*)0));
    }




    if (cur->type == XML_TEXT_NODE) {
 if ((parent->type == XML_TEXT_NODE) &&
     (parent->content != ((void*)0)) &&
     (parent->name == cur->name)) {
     xmlNodeAddContent(parent, cur->content);
     xmlFreeNode(cur);
     return(parent);
 }
 if ((parent->last != ((void*)0)) && (parent->last->type == XML_TEXT_NODE) &&
     (parent->last->name == cur->name) &&
     (parent->last != cur)) {
     xmlNodeAddContent(parent->last, cur->content);
     xmlFreeNode(cur);
     return(parent->last);
 }
    }




    prev = cur->parent;
    cur->parent = parent;
    if (cur->doc != parent->doc) {
 xmlSetTreeDoc(cur, parent->doc);
    }



    if (prev == parent)
 return(cur);




    if ((parent->type == XML_TEXT_NODE) &&
 (parent->content != ((void*)0)) &&
 (parent != cur)) {
 xmlNodeAddContent(parent, cur->content);
 xmlFreeNode(cur);
 return(parent);
    }
    if (cur->type == XML_ATTRIBUTE_NODE) {
  if (parent->type != XML_ELEMENT_NODE)
   return(((void*)0));
 if (parent->properties != ((void*)0)) {

     xmlAttrPtr lastattr;

     if (cur->ns == ((void*)0))
  lastattr = xmlHasNsProp(parent, cur->name, ((void*)0));
     else
  lastattr = xmlHasNsProp(parent, cur->name, cur->ns->href);
     if ((lastattr != ((void*)0)) && (lastattr != (xmlAttrPtr) cur) && (lastattr->type != XML_ATTRIBUTE_DECL)) {

   xmlUnlinkNode((xmlNodePtr) lastattr);
  xmlFreeProp(lastattr);
     }
  if (lastattr == (xmlAttrPtr) cur)
   return(cur);

 }
 if (parent->properties == ((void*)0)) {
     parent->properties = (xmlAttrPtr) cur;
 } else {

     xmlAttrPtr lastattr = parent->properties;
     while (lastattr->next != ((void*)0)) {
  lastattr = lastattr->next;
     }
     lastattr->next = (xmlAttrPtr) cur;
     ((xmlAttrPtr) cur)->prev = lastattr;
 }
    } else {
 if (parent->children == ((void*)0)) {
     parent->children = cur;
     parent->last = cur;
 } else {
     prev = parent->last;
     prev->next = cur;
     cur->prev = prev;
     parent->last = cur;
 }
    }
    return(cur);
}
