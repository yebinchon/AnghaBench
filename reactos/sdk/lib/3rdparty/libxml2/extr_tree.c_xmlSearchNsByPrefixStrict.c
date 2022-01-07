
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* parent; TYPE_1__* nsDef; int * doc; } ;
struct TYPE_6__ {struct TYPE_6__* next; int * href; int const* prefix; } ;


 scalar_t__ IS_STR_XML (int const*) ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 scalar_t__ XML_ENTITY_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 TYPE_1__* xmlTreeEnsureXMLDecl (int *) ;

__attribute__((used)) static int
xmlSearchNsByPrefixStrict(xmlDocPtr doc, xmlNodePtr node,
     const xmlChar* prefix,
     xmlNsPtr *retNs)
{
    xmlNodePtr cur;
    xmlNsPtr ns;

    if ((doc == ((void*)0)) || (node == ((void*)0)) || (node->type == XML_NAMESPACE_DECL))
        return(-1);

    if (retNs)
 *retNs = ((void*)0);
    if (IS_STR_XML(prefix)) {
 if (retNs) {
     *retNs = xmlTreeEnsureXMLDecl(doc);
     if (*retNs == ((void*)0))
  return (-1);
 }
 return (1);
    }
    cur = node;
    do {
 if (cur->type == XML_ELEMENT_NODE) {
     if (cur->nsDef != ((void*)0)) {
  ns = cur->nsDef;
  do {
      if ((prefix == ns->prefix) ||
   xmlStrEqual(prefix, ns->prefix))
      {



   if (ns->href == ((void*)0))
       return(0);
   if (retNs)
       *retNs = ns;
   return (1);
      }
      ns = ns->next;
  } while (ns != ((void*)0));
     }
 } else if ((cur->type == XML_ENTITY_NODE) ||
            (cur->type == XML_ENTITY_DECL))
     return (0);
 cur = cur->parent;
    } while ((cur != ((void*)0)) && (cur->doc != (xmlDocPtr) cur));
    return (0);
}
