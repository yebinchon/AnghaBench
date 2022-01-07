
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_15__ {TYPE_3__* properties; } ;
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ doc; TYPE_7__* parent; struct TYPE_13__* prev; struct TYPE_13__* next; TYPE_1__* ns; int name; } ;
struct TYPE_12__ {int * href; } ;


 scalar_t__ XML_ATTRIBUTE_DECL ;
 scalar_t__ XML_ATTRIBUTE_NODE ;
 TYPE_3__* xmlHasNsProp (TYPE_7__*,int ,int *) ;
 int xmlRemoveProp (TYPE_3__*) ;
 int xmlSetTreeDoc (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static xmlNodePtr
xmlAddPropSibling(xmlNodePtr prev, xmlNodePtr cur, xmlNodePtr prop) {
 xmlAttrPtr attr;

 if ((cur == ((void*)0)) || (cur->type != XML_ATTRIBUTE_NODE) ||
     (prop == ((void*)0)) || (prop->type != XML_ATTRIBUTE_NODE) ||
     ((prev != ((void*)0)) && (prev->type != XML_ATTRIBUTE_NODE)))
  return(((void*)0));


 if (prop->ns == ((void*)0))
  attr = xmlHasNsProp(cur->parent, prop->name, ((void*)0));
 else
  attr = xmlHasNsProp(cur->parent, prop->name, prop->ns->href);

 if (prop->doc != cur->doc) {
  xmlSetTreeDoc(prop, cur->doc);
 }
 prop->parent = cur->parent;
 prop->prev = prev;
 if (prev != ((void*)0)) {
  prop->next = prev->next;
  prev->next = prop;
  if (prop->next)
   prop->next->prev = prop;
 } else {
  prop->next = cur;
  cur->prev = prop;
 }
 if (prop->prev == ((void*)0) && prop->parent != ((void*)0))
  prop->parent->properties = (xmlAttrPtr) prop;
 if ((attr != ((void*)0)) && (attr->type != XML_ATTRIBUTE_DECL)) {

  xmlRemoveProp((xmlAttrPtr) attr);
 }
 return prop;
}
