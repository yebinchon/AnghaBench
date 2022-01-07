
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int MAX_URI_LENGTH ;
 scalar_t__ xmlRealloc (int *,int) ;
 int xmlURIErrMemory (char*) ;

__attribute__((used)) static xmlChar *
xmlSaveUriRealloc(xmlChar *ret, int *max) {
    xmlChar *temp;
    int tmp;

    if (*max > MAX_URI_LENGTH) {
        xmlURIErrMemory("reaching arbitrary MAX_URI_LENGTH limit\n");
        return(((void*)0));
    }
    tmp = *max * 2;
    temp = (xmlChar *) xmlRealloc(ret, (tmp + 1));
    if (temp == ((void*)0)) {
        xmlURIErrMemory("saving URI\n");
        return(((void*)0));
    }
    *max = tmp;
    return(temp);
}
