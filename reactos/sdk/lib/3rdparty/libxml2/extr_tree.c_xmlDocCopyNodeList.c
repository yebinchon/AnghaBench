
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;
typedef int xmlDocPtr ;


 int xmlStaticCopyNodeList (int ,int ,int *) ;

xmlNodePtr xmlDocCopyNodeList(xmlDocPtr doc, xmlNodePtr node) {
    xmlNodePtr ret = xmlStaticCopyNodeList(node, doc, ((void*)0));
    return(ret);
}
