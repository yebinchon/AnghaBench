
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlNsPtr ;
typedef TYPE_1__* xmlNodePtr ;
typedef int xmlNode ;
typedef int xmlChar ;
struct TYPE_5__ {int ns; int * name; int type; } ;


 int XML_ELEMENT_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (TYPE_1__*) ;
 int xmlTreeErrMemory (char*) ;

xmlNodePtr
xmlNewNodeEatName(xmlNsPtr ns, xmlChar *name) {
    xmlNodePtr cur;

    if (name == ((void*)0)) {




 return(((void*)0));
    }




    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building node");

 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_ELEMENT_NODE;

    cur->name = name;
    cur->ns = ns;

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue((xmlNodePtr)cur);
    return(cur);
}
