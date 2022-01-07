
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlNodePtr ;
typedef int xmlChar ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int xmlNodeAddContentLen (int *,int const*,int) ;
 int xmlStrlen (int const*) ;

void
xmlNodeAddContent(xmlNodePtr cur, const xmlChar *content) {
    int len;

    if (cur == ((void*)0)) {




 return;
    }
    if (content == ((void*)0)) return;
    len = xmlStrlen(content);
    xmlNodeAddContentLen(cur, content, len);
}
