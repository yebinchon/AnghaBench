
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;
typedef int xmlChar ;


 int xmlNewDocPI (int *,int const*,int const*) ;

xmlNodePtr
xmlNewPI(const xmlChar *name, const xmlChar *content) {
    return(xmlNewDocPI(((void*)0), name, content));
}
