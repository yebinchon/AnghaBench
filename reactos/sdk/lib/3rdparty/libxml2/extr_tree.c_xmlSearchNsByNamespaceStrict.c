
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* parent; TYPE_1__* nsDef; int * doc; } ;
struct TYPE_8__ {int const* prefix; int const* href; struct TYPE_8__* next; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 scalar_t__ XML_ENTITY_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 int const* XML_XML_NAMESPACE ;
 int xmlNsInScope (int *,TYPE_2__*,TYPE_2__*,int const*) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 TYPE_1__* xmlTreeEnsureXMLDecl (int *) ;

__attribute__((used)) static int
xmlSearchNsByNamespaceStrict(xmlDocPtr doc, xmlNodePtr node,
        const xmlChar* nsName,
        xmlNsPtr *retNs, int prefixed)
{
    xmlNodePtr cur, prev = ((void*)0), out = ((void*)0);
    xmlNsPtr ns, prevns;

    if ((doc == ((void*)0)) || (nsName == ((void*)0)) || (retNs == ((void*)0)))
 return (-1);
    if ((node == ((void*)0)) || (node->type == XML_NAMESPACE_DECL))
        return(-1);

    *retNs = ((void*)0);
    if (xmlStrEqual(nsName, XML_XML_NAMESPACE)) {
 *retNs = xmlTreeEnsureXMLDecl(doc);
 if (*retNs == ((void*)0))
     return (-1);
 return (1);
    }
    cur = node;
    do {
 if (cur->type == XML_ELEMENT_NODE) {
     if (cur->nsDef != ((void*)0)) {
  for (ns = cur->nsDef; ns != ((void*)0); ns = ns->next) {
      if (prefixed && (ns->prefix == ((void*)0)))
   continue;
      if (prev != ((void*)0)) {




   prevns = prev->nsDef;
   do {
       if ((prevns->prefix == ns->prefix) ||
    ((prevns->prefix != ((void*)0)) &&
    (ns->prefix != ((void*)0)) &&
    xmlStrEqual(prevns->prefix, ns->prefix))) {



    break;
       }
       prevns = prevns->next;
   } while (prevns != ((void*)0));
   if (prevns != ((void*)0))
       continue;
      }



      if ((nsName == ns->href) ||
   xmlStrEqual(nsName, ns->href)) {





   if (out) {
       int ret;

       ret = xmlNsInScope(doc, node, prev, ns->prefix);
       if (ret < 0)
    return (-1);







       if (! ret)
    continue;
   }
   *retNs = ns;
   return (1);
      }
  }
  out = prev;
  prev = cur;
     }
 } else if ((cur->type == XML_ENTITY_NODE) ||
            (cur->type == XML_ENTITY_DECL))
     return (0);
 cur = cur->parent;
    } while ((cur != ((void*)0)) && (cur->doc != (xmlDocPtr) cur));
    return (0);
}
