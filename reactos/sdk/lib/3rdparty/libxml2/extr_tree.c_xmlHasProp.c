
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int name; TYPE_2__* doc; TYPE_4__* properties; } ;
typedef TYPE_1__ xmlNode ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_3__* xmlAttributePtr ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_11__ {struct TYPE_11__* next; int name; } ;
struct TYPE_10__ {int * defaultValue; } ;
struct TYPE_9__ {int * extSubset; int * intSubset; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int xmlCheckDTD ;
 TYPE_3__* xmlGetDtdAttrDesc (int *,int ,int const*) ;
 scalar_t__ xmlStrEqual (int ,int const*) ;

xmlAttrPtr
xmlHasProp(const xmlNode *node, const xmlChar *name) {
    xmlAttrPtr prop;
    xmlDocPtr doc;

    if ((node == ((void*)0)) || (node->type != XML_ELEMENT_NODE) || (name == ((void*)0)))
        return(((void*)0));



    prop = node->properties;
    while (prop != ((void*)0)) {
        if (xmlStrEqual(prop->name, name)) {
     return(prop);
        }
 prop = prop->next;
    }
    if (!xmlCheckDTD) return(((void*)0));





    doc = node->doc;
    if (doc != ((void*)0)) {
        xmlAttributePtr attrDecl;
        if (doc->intSubset != ((void*)0)) {
     attrDecl = xmlGetDtdAttrDesc(doc->intSubset, node->name, name);
     if ((attrDecl == ((void*)0)) && (doc->extSubset != ((void*)0)))
  attrDecl = xmlGetDtdAttrDesc(doc->extSubset, node->name, name);
            if ((attrDecl != ((void*)0)) && (attrDecl->defaultValue != ((void*)0)))


  return((xmlAttrPtr) attrDecl);
 }
    }
    return(((void*)0));
}
