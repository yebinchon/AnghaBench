
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlNodePtr ;
typedef TYPE_1__* xmlDocPtr ;
typedef int xmlDoc ;
typedef int xmlChar ;
struct TYPE_5__ {int standalone; int compression; int charset; int properties; scalar_t__ parseFlags; struct TYPE_5__* doc; int * version; int type; } ;


 int XML_CHAR_ENCODING_UTF8 ;
 int XML_DOCUMENT_NODE ;
 int XML_DOC_USERBUILT ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 int xmlFree (TYPE_1__*) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (int ) ;
 int * xmlStrdup (int const*) ;
 int xmlTreeErrMemory (char*) ;

xmlDocPtr
xmlNewDoc(const xmlChar *version) {
    xmlDocPtr cur;

    if (version == ((void*)0))
 version = (const xmlChar *) "1.0";




    cur = (xmlDocPtr) xmlMalloc(sizeof(xmlDoc));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building doc");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlDoc));
    cur->type = XML_DOCUMENT_NODE;

    cur->version = xmlStrdup(version);
    if (cur->version == ((void*)0)) {
 xmlTreeErrMemory("building doc");
 xmlFree(cur);
 return(((void*)0));
    }
    cur->standalone = -1;
    cur->compression = -1;
    cur->doc = cur;
    cur->parseFlags = 0;
    cur->properties = XML_DOC_USERBUILT;





    cur->charset = XML_CHAR_ENCODING_UTF8;

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue((xmlNodePtr)cur);
    return(cur);
}
