
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNsPtr ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
typedef int * xmlAttrPtr ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int * xmlNewPropInternal (int ,int ,int const*,int const*,int ) ;

xmlAttrPtr
xmlNewNsProp(xmlNodePtr node, xmlNsPtr ns, const xmlChar *name,
           const xmlChar *value) {

    if (name == ((void*)0)) {




 return(((void*)0));
    }

    return xmlNewPropInternal(node, ns, name, value, 0);
}
