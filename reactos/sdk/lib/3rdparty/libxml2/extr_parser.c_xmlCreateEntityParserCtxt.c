
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int xmlChar ;


 int xmlCreateEntityParserCtxtInternal (int const*,int const*,int const*,int *) ;

xmlParserCtxtPtr
xmlCreateEntityParserCtxt(const xmlChar *URL, const xmlChar *ID,
                   const xmlChar *base) {
    return xmlCreateEntityParserCtxtInternal(URL, ID, base, ((void*)0));

}
