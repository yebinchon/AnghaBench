
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;
typedef int xmlDocPtr ;


 int xmlStaticCopyNode (int ,int ,int *,int) ;

xmlNodePtr
xmlDocCopyNode(xmlNodePtr node, xmlDocPtr doc, int extended) {
    xmlNodePtr ret;

    ret = xmlStaticCopyNode(node, doc, ((void*)0), extended);
    return(ret);
}
