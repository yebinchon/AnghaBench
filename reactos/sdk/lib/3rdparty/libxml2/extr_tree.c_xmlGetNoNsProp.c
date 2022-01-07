
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNode ;
typedef int xmlChar ;
typedef int * xmlAttrPtr ;


 int xmlCheckDTD ;
 int * xmlGetPropNodeInternal (int const*,int const*,int *,int ) ;
 int * xmlGetPropNodeValueInternal (int *) ;

xmlChar *
xmlGetNoNsProp(const xmlNode *node, const xmlChar *name) {
    xmlAttrPtr prop;

    prop = xmlGetPropNodeInternal(node, name, ((void*)0), xmlCheckDTD);
    if (prop == ((void*)0))
 return(((void*)0));
    return(xmlGetPropNodeValueInternal(prop));
}
