
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNode ;
typedef int xmlChar ;
typedef int * xmlAttrPtr ;


 int * xmlGetPropNodeValueInternal (int *) ;
 int * xmlHasProp (int const*,int const*) ;

xmlChar *
xmlGetProp(const xmlNode *node, const xmlChar *name) {
    xmlAttrPtr prop;

    prop = xmlHasProp(node, name);
    if (prop == ((void*)0))
 return(((void*)0));
    return(xmlGetPropNodeValueInternal(prop));
}
