
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int xmlChar ;


 int * xmlStringLenDecodeEntities (int *,int const*,int ,int,int ,int ,int ) ;
 int xmlStrlen (int const*) ;

xmlChar *
xmlStringDecodeEntities(xmlParserCtxtPtr ctxt, const xmlChar *str, int what,
          xmlChar end, xmlChar end2, xmlChar end3) {
    if ((ctxt == ((void*)0)) || (str == ((void*)0))) return(((void*)0));
    return(xmlStringLenDecodeEntities(ctxt, str, xmlStrlen(str), what,
           end, end2, end3));
}
