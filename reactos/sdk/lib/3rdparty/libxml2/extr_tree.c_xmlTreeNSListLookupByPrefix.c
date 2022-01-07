
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef int xmlChar ;
struct TYPE_4__ {struct TYPE_4__* next; int const* prefix; } ;


 scalar_t__ xmlStrEqual (int const*,int const*) ;

__attribute__((used)) static xmlNsPtr
xmlTreeNSListLookupByPrefix(xmlNsPtr nsList, const xmlChar *prefix)
{
    if (nsList == ((void*)0))
 return (((void*)0));
    {
 xmlNsPtr ns;
 ns = nsList;
 do {
     if ((prefix == ns->prefix) ||
  xmlStrEqual(prefix, ns->prefix)) {
  return (ns);
     }
     ns = ns->next;
 } while (ns != ((void*)0));
    }
    return (((void*)0));
}
