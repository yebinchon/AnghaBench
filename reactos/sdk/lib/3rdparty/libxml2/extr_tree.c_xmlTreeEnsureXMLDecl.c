
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef int xmlNs ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_7__ {TYPE_1__* oldNs; } ;
struct TYPE_6__ {void* prefix; void* href; int type; } ;


 int XML_LOCAL_NAMESPACE ;
 int const* XML_XML_NAMESPACE ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 void* xmlStrdup (int const*) ;
 int xmlTreeErrMemory (char*) ;

__attribute__((used)) static xmlNsPtr
xmlTreeEnsureXMLDecl(xmlDocPtr doc)
{
    if (doc == ((void*)0))
 return (((void*)0));
    if (doc->oldNs != ((void*)0))
 return (doc->oldNs);
    {
 xmlNsPtr ns;
 ns = (xmlNsPtr) xmlMalloc(sizeof(xmlNs));
 if (ns == ((void*)0)) {
     xmlTreeErrMemory(
  "allocating the XML namespace");
     return (((void*)0));
 }
 memset(ns, 0, sizeof(xmlNs));
 ns->type = XML_LOCAL_NAMESPACE;
 ns->href = xmlStrdup(XML_XML_NAMESPACE);
 ns->prefix = xmlStrdup((const xmlChar *)"xml");
 doc->oldNs = ns;
 return (ns);
    }
}
