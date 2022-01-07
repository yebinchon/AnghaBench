
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef int xmlNs ;
typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_15__ {TYPE_1__* oldNs; } ;
struct TYPE_14__ {scalar_t__ type; struct TYPE_14__* parent; TYPE_1__* ns; TYPE_1__* nsDef; TYPE_3__* doc; } ;
struct TYPE_13__ {int * prefix; int const* href; struct TYPE_13__* next; int type; } ;


 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 scalar_t__ XML_ENTITY_NODE ;
 scalar_t__ XML_ENTITY_REF_NODE ;
 int XML_LOCAL_NAMESPACE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 int const* XML_XML_NAMESPACE ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlNsInScope (TYPE_3__*,TYPE_2__*,TYPE_2__*,int *) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 void* xmlStrdup (int const*) ;
 TYPE_1__* xmlTreeEnsureXMLDecl (TYPE_3__*) ;
 int xmlTreeErrMemory (char*) ;

xmlNsPtr
xmlSearchNsByHref(xmlDocPtr doc, xmlNodePtr node, const xmlChar * href)
{
    xmlNsPtr cur;
    xmlNodePtr orig = node;
    int is_attr;

    if ((node == ((void*)0)) || (node->type == XML_NAMESPACE_DECL) || (href == ((void*)0)))
        return (((void*)0));
    if (xmlStrEqual(href, XML_XML_NAMESPACE)) {



        if ((doc == ((void*)0)) && (node->type == XML_ELEMENT_NODE)) {





            cur = (xmlNsPtr) xmlMalloc(sizeof(xmlNs));
            if (cur == ((void*)0)) {
  xmlTreeErrMemory("searching namespace");
                return (((void*)0));
            }
            memset(cur, 0, sizeof(xmlNs));
            cur->type = XML_LOCAL_NAMESPACE;
            cur->href = xmlStrdup(XML_XML_NAMESPACE);
            cur->prefix = xmlStrdup((const xmlChar *) "xml");
            cur->next = node->nsDef;
            node->nsDef = cur;
            return (cur);
        }
 if (doc == ((void*)0)) {
     doc = node->doc;
     if (doc == ((void*)0))
  return(((void*)0));
 }



 if (doc->oldNs == ((void*)0))
     return(xmlTreeEnsureXMLDecl(doc));
 else
     return(doc->oldNs);
    }
    is_attr = (node->type == XML_ATTRIBUTE_NODE);
    while (node != ((void*)0)) {
        if ((node->type == XML_ENTITY_REF_NODE) ||
            (node->type == XML_ENTITY_NODE) ||
            (node->type == XML_ENTITY_DECL))
            return (((void*)0));
        if (node->type == XML_ELEMENT_NODE) {
            cur = node->nsDef;
            while (cur != ((void*)0)) {
                if ((cur->href != ((void*)0)) && (href != ((void*)0)) &&
                    (xmlStrEqual(cur->href, href))) {
      if (((!is_attr) || (cur->prefix != ((void*)0))) &&
          (xmlNsInScope(doc, orig, node, cur->prefix) == 1))
   return (cur);
                }
                cur = cur->next;
            }
            if (orig != node) {
                cur = node->ns;
                if (cur != ((void*)0)) {
                    if ((cur->href != ((void*)0)) && (href != ((void*)0)) &&
                        (xmlStrEqual(cur->href, href))) {
   if (((!is_attr) || (cur->prefix != ((void*)0))) &&
              (xmlNsInScope(doc, orig, node, cur->prefix) == 1))
       return (cur);
                    }
                }
            }
        }
        node = node->parent;
    }
    return (((void*)0));
}
