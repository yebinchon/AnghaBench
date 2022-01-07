
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlNode ;
typedef int xmlDocPtr ;
typedef char xmlChar ;
struct TYPE_5__ {void* name; int doc; int type; } ;


 int XML_ENTITY_REF_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (TYPE_1__*) ;
 void* xmlStrdup (char const*) ;
 int xmlStrlen (char const*) ;
 void* xmlStrndup (char const*,int) ;
 int xmlTreeErrMemory (char*) ;

xmlNodePtr
xmlNewCharRef(xmlDocPtr doc, const xmlChar *name) {
    xmlNodePtr cur;

    if (name == ((void*)0))
        return(((void*)0));




    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building character reference");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_ENTITY_REF_NODE;

    cur->doc = doc;
    if (name[0] == '&') {
        int len;
        name++;
 len = xmlStrlen(name);
 if (name[len - 1] == ';')
     cur->name = xmlStrndup(name, len - 1);
 else
     cur->name = xmlStrndup(name, len);
    } else
 cur->name = xmlStrdup(name);

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue(cur);
    return(cur);
}
