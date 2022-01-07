
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlNode ;
typedef TYPE_2__* xmlEntityPtr ;
typedef int xmlDoc ;
typedef char xmlChar ;
struct TYPE_8__ {int content; } ;
struct TYPE_7__ {struct TYPE_7__* last; struct TYPE_7__* children; int content; void* name; int * doc; int type; } ;


 int XML_ENTITY_REF_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__* xmlGetDocEntity (int const*,void*) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (TYPE_1__*) ;
 void* xmlStrdup (char const*) ;
 int xmlStrlen (char const*) ;
 void* xmlStrndup (char const*,int) ;
 int xmlTreeErrMemory (char*) ;

xmlNodePtr
xmlNewReference(const xmlDoc *doc, const xmlChar *name) {
    xmlNodePtr cur;
    xmlEntityPtr ent;

    if (name == ((void*)0))
        return(((void*)0));




    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building reference");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_ENTITY_REF_NODE;

    cur->doc = (xmlDoc *)doc;
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

    ent = xmlGetDocEntity(doc, cur->name);
    if (ent != ((void*)0)) {
 cur->content = ent->content;





 cur->children = (xmlNodePtr) ent;
 cur->last = (xmlNodePtr) ent;
    }

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue(cur);
    return(cur);
}
