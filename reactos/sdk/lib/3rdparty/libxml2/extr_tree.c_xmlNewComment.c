
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlNode ;
typedef int xmlChar ;
struct TYPE_5__ {int content; int name; int type; } ;


 int XML_COMMENT_NODE ;
 scalar_t__ __xmlRegisterCallbacks ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlRegisterNodeDefaultValue (TYPE_1__*) ;
 int xmlStrdup (int const*) ;
 int xmlStringComment ;
 int xmlTreeErrMemory (char*) ;

xmlNodePtr
xmlNewComment(const xmlChar *content) {
    xmlNodePtr cur;




    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == ((void*)0)) {
 xmlTreeErrMemory("building comment");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_COMMENT_NODE;

    cur->name = xmlStringComment;
    if (content != ((void*)0)) {
 cur->content = xmlStrdup(content);
    }

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
 xmlRegisterNodeDefaultValue(cur);
    return(cur);
}
