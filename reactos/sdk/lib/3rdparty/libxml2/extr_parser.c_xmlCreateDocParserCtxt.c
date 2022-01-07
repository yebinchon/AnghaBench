
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int xmlChar ;


 int * xmlCreateMemoryParserCtxt (char const*,int) ;
 int xmlStrlen (int const*) ;

xmlParserCtxtPtr
xmlCreateDocParserCtxt(const xmlChar *cur) {
    int len;

    if (cur == ((void*)0))
 return(((void*)0));
    len = xmlStrlen(cur);
    return(xmlCreateMemoryParserCtxt((const char *)cur, len));
}
