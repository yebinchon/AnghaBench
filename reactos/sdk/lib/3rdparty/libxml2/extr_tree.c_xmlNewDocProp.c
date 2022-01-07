
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_3__* xmlAttrPtr ;
typedef int xmlAttr ;
struct TYPE_12__ {TYPE_1__* last; TYPE_1__* children; TYPE_2__* doc; int name; int type; } ;
struct TYPE_11__ {int * dict; } ;
struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* parent; } ;


 int XML_ATTRIBUTE_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_3__*,int ,int) ;
 int xmlDictLookup (int *,int const*,int) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (TYPE_1__*) ;
 int xmlStrdup (int const*) ;
 TYPE_1__* xmlStringGetNodeList (TYPE_2__*,int const*) ;
 int xmlTreeErrMemory (char*) ;

xmlAttrPtr
xmlNewDocProp(xmlDocPtr doc, const xmlChar *name, const xmlChar *value) {
    xmlAttrPtr cur;

    if (name == ((void*)0)) {




 return(((void*)0));
    }




    cur = (xmlAttrPtr) xmlMalloc(sizeof(xmlAttr));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building attribute");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlAttr));
    cur->type = XML_ATTRIBUTE_NODE;

    if ((doc != ((void*)0)) && (doc->dict != ((void*)0)))
 cur->name = xmlDictLookup(doc->dict, name, -1);
    else
 cur->name = xmlStrdup(name);
    cur->doc = doc;
    if (value != ((void*)0)) {
 xmlNodePtr tmp;

 cur->children = xmlStringGetNodeList(doc, value);
 cur->last = ((void*)0);

 tmp = cur->children;
 while (tmp != ((void*)0)) {
     tmp->parent = (xmlNodePtr) cur;
     if (tmp->next == ((void*)0))
  cur->last = tmp;
     tmp = tmp->next;
 }
    }

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue((xmlNodePtr)cur);
    return(cur);
}
