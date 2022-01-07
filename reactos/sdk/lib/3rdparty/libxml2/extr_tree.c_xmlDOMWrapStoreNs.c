
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_5__ {struct TYPE_5__* next; int const* href; int const* prefix; } ;


 TYPE_1__* xmlNewNs (int *,int const*,int const*) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 TYPE_1__* xmlTreeEnsureXMLDecl (int *) ;

__attribute__((used)) static xmlNsPtr
xmlDOMWrapStoreNs(xmlDocPtr doc,
     const xmlChar *nsName,
     const xmlChar *prefix)
{
    xmlNsPtr ns;

    if (doc == ((void*)0))
 return (((void*)0));
    ns = xmlTreeEnsureXMLDecl(doc);
    if (ns == ((void*)0))
 return (((void*)0));
    if (ns->next != ((void*)0)) {

 ns = ns->next;
 while (ns != ((void*)0)) {
     if (((ns->prefix == prefix) ||
  xmlStrEqual(ns->prefix, prefix)) &&
  xmlStrEqual(ns->href, nsName)) {
  return (ns);
     }
     if (ns->next == ((void*)0))
  break;
     ns = ns->next;
 }
    }

    if (ns != ((void*)0)) {
        ns->next = xmlNewNs(((void*)0), nsName, prefix);
        return (ns->next);
    }
    return(((void*)0));
}
