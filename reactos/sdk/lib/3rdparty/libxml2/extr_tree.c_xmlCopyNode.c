
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;


 int xmlStaticCopyNode (int ,int *,int *,int) ;

xmlNodePtr
xmlCopyNode(xmlNodePtr node, int extended) {
    xmlNodePtr ret;

    ret = xmlStaticCopyNode(node, ((void*)0), ((void*)0), extended);
    return(ret);
}
