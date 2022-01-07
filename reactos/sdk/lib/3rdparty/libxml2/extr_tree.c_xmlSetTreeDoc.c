
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef void* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_2__* xmlAttrPtr ;
struct TYPE_9__ {scalar_t__ atype; struct TYPE_9__* next; int * children; void* doc; } ;
struct TYPE_8__ {scalar_t__ type; void* doc; int * children; TYPE_2__* properties; } ;


 scalar_t__ XML_ATTRIBUTE_ID ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 int xmlAddID (int *,void*,int *,TYPE_2__*) ;
 scalar_t__ xmlIsID (void*,TYPE_1__*,TYPE_2__*) ;
 int * xmlNodeListGetString (void*,int *,int) ;
 int xmlRemoveID (void*,TYPE_2__*) ;
 int xmlSetListDoc (int *,void*) ;

void
xmlSetTreeDoc(xmlNodePtr tree, xmlDocPtr doc) {
    xmlAttrPtr prop;

    if ((tree == ((void*)0)) || (tree->type == XML_NAMESPACE_DECL))
 return;
    if (tree->doc != doc) {
 if(tree->type == XML_ELEMENT_NODE) {
     prop = tree->properties;
     while (prop != ((void*)0)) {
                if (prop->atype == XML_ATTRIBUTE_ID) {
                    xmlRemoveID(tree->doc, prop);
                }

  prop->doc = doc;
  xmlSetListDoc(prop->children, doc);
  prop = prop->next;
     }
 }
 if (tree->children != ((void*)0))
     xmlSetListDoc(tree->children, doc);
 tree->doc = doc;
    }
}
