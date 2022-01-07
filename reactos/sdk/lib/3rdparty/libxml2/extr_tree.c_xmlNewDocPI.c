
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlNode ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_8__ {int * dict; } ;
struct TYPE_7__ {TYPE_2__* doc; void* content; void* name; int type; } ;


 int XML_PI_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 void* xmlDictLookup (int *,int const*,int) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (TYPE_1__*) ;
 void* xmlStrdup (int const*) ;
 int xmlTreeErrMemory (char*) ;

xmlNodePtr
xmlNewDocPI(xmlDocPtr doc, const xmlChar *name, const xmlChar *content) {
    xmlNodePtr cur;

    if (name == ((void*)0)) {




 return(((void*)0));
    }




    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building PI");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_PI_NODE;

    if ((doc != ((void*)0)) && (doc->dict != ((void*)0)))
        cur->name = xmlDictLookup(doc->dict, name, -1);
    else
 cur->name = xmlStrdup(name);
    if (content != ((void*)0)) {
 cur->content = xmlStrdup(content);
    }
    cur->doc = doc;

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue((xmlNodePtr)cur);
    return(cur);
}
