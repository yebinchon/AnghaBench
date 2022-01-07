
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlChar ;
typedef TYPE_1__* xmlAttributePtr ;
struct TYPE_6__ {scalar_t__ type; TYPE_3__* children; int doc; } ;
typedef TYPE_2__ xmlAttr ;
struct TYPE_7__ {scalar_t__ type; int * content; int * next; } ;
struct TYPE_5__ {int * defaultValue; } ;


 scalar_t__ XML_ATTRIBUTE_DECL ;
 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 int * xmlNodeListGetString (int ,TYPE_3__*,int) ;
 int * xmlStrdup (int *) ;

__attribute__((used)) static xmlChar*
xmlGetPropNodeValueInternal(const xmlAttr *prop)
{
    if (prop == ((void*)0))
 return(((void*)0));
    if (prop->type == XML_ATTRIBUTE_NODE) {




 if (prop->children != ((void*)0)) {
     if ((prop->children->next == ((void*)0)) &&
  ((prop->children->type == XML_TEXT_NODE) ||
  (prop->children->type == XML_CDATA_SECTION_NODE)))
     {



  return(xmlStrdup(prop->children->content));
     } else {
  xmlChar *ret;

  ret = xmlNodeListGetString(prop->doc, prop->children, 1);
  if (ret != ((void*)0))
      return(ret);
     }
 }
 return(xmlStrdup((xmlChar *)""));
    } else if (prop->type == XML_ATTRIBUTE_DECL) {
 return(xmlStrdup(((xmlAttributePtr)prop)->defaultValue));
    }
    return(((void*)0));
}
