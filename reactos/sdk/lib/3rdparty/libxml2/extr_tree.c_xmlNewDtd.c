
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xmlNodePtr ;
typedef TYPE_1__* xmlDtdPtr ;
typedef int xmlDtd ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_7__ {TYPE_1__* extSubset; int name; } ;
struct TYPE_6__ {TYPE_2__* doc; void* SystemID; void* ExternalID; void* name; int type; } ;


 int XML_DTD_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 int xmlGenericError (int ,char*,char*,int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (int ) ;
 void* xmlStrdup (int const*) ;
 int xmlTreeErrMemory (char*) ;

xmlDtdPtr
xmlNewDtd(xmlDocPtr doc, const xmlChar *name,
                    const xmlChar *ExternalID, const xmlChar *SystemID) {
    xmlDtdPtr cur;

    if ((doc != ((void*)0)) && (doc->extSubset != ((void*)0))) {






 return(((void*)0));
    }




    cur = (xmlDtdPtr) xmlMalloc(sizeof(xmlDtd));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building DTD");
 return(((void*)0));
    }
    memset(cur, 0 , sizeof(xmlDtd));
    cur->type = XML_DTD_NODE;

    if (name != ((void*)0))
 cur->name = xmlStrdup(name);
    if (ExternalID != ((void*)0))
 cur->ExternalID = xmlStrdup(ExternalID);
    if (SystemID != ((void*)0))
 cur->SystemID = xmlStrdup(SystemID);
    if (doc != ((void*)0))
 doc->extSubset = cur;
    cur->doc = doc;

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue((xmlNodePtr)cur);
    return(cur);
}
