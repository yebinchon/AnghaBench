
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;
typedef int xmlAttrPtr ;


 int xmlCopyPropInternal (int *,int ,int ) ;

xmlAttrPtr
xmlCopyProp(xmlNodePtr target, xmlAttrPtr cur) {
 return xmlCopyPropInternal(((void*)0), target, cur);
}
